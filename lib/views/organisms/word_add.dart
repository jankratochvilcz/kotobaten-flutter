import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/dictionary/dictionary_card.dart';
import 'package:kotobaten/models/slices/navigation/overlays_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/alert_dialog_border.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/organisms/word_add/type_grammar.dart';
import 'package:kotobaten/views/organisms/word_add/type_word.dart';

showWordAddBottomSheet(
    BuildContext context,
    WidgetRef ref,
    Future<card_entity.CardInitialized> Function(card_entity.Card card)
        onSubmit,
    {card_entity.CardInitialized? existingWord,
    DictionaryCard? prefillFromDictionaryCard}) {
  final overlaysService = ref.read(overlaysServiceProvider);
  overlaysService.showOverlay(
      context,
      (context) => WordAddDialogContents(onSubmit,
          existingWord: existingWord,
          prefillFromDictionaryCard: prefillFromDictionaryCard));
}

class WordAddDialogContents extends HookConsumerWidget {
  final Future<card_entity.CardInitialized> Function(card_entity.Card card)
      onSubmit;
  final card_entity.CardInitialized? existingWord;
  final DictionaryCard? prefillFromDictionaryCard;

  const WordAddDialogContents(this.onSubmit,
      {Key? key, this.existingWord, this.prefillFromDictionaryCard})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.read(navigationServiceProvider);

    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: WordAddForm(
          (card) async {
            final createdCard = await onSubmit(card);
            navigationService.goBack(context);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Card for "${createdCard.sense}" ${existingWord == null ? "created" : "updated"}.')));
          },
          existingWord: existingWord,
          prefillFromDictionaryCard: prefillFromDictionaryCard,
        ));
  }
}

class WordAddForm extends StatefulHookConsumerWidget {
  final Future Function(card_entity.Card card) _onSubmit;
  final card_entity.CardInitialized? existingWord;
  final DictionaryCard? prefillFromDictionaryCard;

  const WordAddForm(this._onSubmit,
      {Key? key, this.existingWord, this.prefillFromDictionaryCard})
      : super(key: key);

  @override
  _WordAddFormState createState() => _WordAddFormState();
}

class _WordAddFormState extends ConsumerState<WordAddForm> {
  final _formKey = GlobalKey<FormState>();
  final _senseController = TextEditingController();
  final _kanjiController = TextEditingController();
  final _kanaController = TextEditingController();
  final _noteController = TextEditingController();
  CardType _cardType = CardType.word;

  @override
  void initState() {
    super.initState();

    if (widget.existingWord != null) {
      _senseController.text = widget.existingWord?.sense ?? '';
      _kanjiController.text = widget.existingWord?.kanji ?? '';
      _kanaController.text = widget.existingWord?.kana ?? '';
      _noteController.text = widget.existingWord?.note ?? '';
      _cardType = widget.existingWord?.type ?? CardType.word;
    } else if (widget.prefillFromDictionaryCard != null) {
      _senseController.text = widget
          .prefillFromDictionaryCard!.senses.first.senses
          .reduceWithCommas();
      _kanjiController.text = widget.prefillFromDictionaryCard!.kanji;
      _kanaController.text = widget.prefillFromDictionaryCard!.kana;
      _cardType = CardType.word;
    }
  }

  void setCardType(CardType? cardType) {
    setState(() {
      if (cardType == null) {
        return;
      }

      _cardType = cardType;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardsService = ref.read(cardsServiceProvider);

    onEditComplete() async {
      if (_formKey.currentState!.validate()) {
        if (widget.existingWord?.id != null) {
          return widget._onSubmit(card_entity.Card(
              widget.existingWord!.id,
              _senseController.text,
              _kanaController.text,
              _kanjiController.text,
              DateTime.now(),
              _noteController.text,
              _cardType,
              null,
              null));
        } else {
          return widget._onSubmit(card_entity.Card.newCard(
              _senseController.text,
              _kanaController.text,
              _kanjiController.text,
              _noteController.text,
              DateTime.now(),
              _cardType));
        }
      }
    }

    return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 380),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: allPadding(PaddingType.large),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.existingWord?.id == null)
                      Padding(
                          padding: bottomPadding(PaddingType.xLarge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (_cardType == CardType.word)
                                TextButton.icon(
                                    onPressed: () =>
                                        setCardType(CardType.grammar),
                                    icon: Icon(
                                      Icons.switch_left_outlined,
                                      color: getDescriptionColorSubtle(context),
                                    ),
                                    label: Text(
                                      "Switch to grammar mode",
                                      style: TextStyle(
                                          color: getDescriptionColorSubtle(
                                              context)),
                                    )),
                              if (_cardType == CardType.grammar)
                                TextButton.icon(
                                    onPressed: () => setCardType(CardType.word),
                                    icon: Icon(Icons.switch_right_outlined,
                                        color:
                                            getDescriptionColorSubtle(context)),
                                    label: Text("Switch to vocabulary mode",
                                        style: TextStyle(
                                            color: getDescriptionColorSubtle(
                                                context)))),
                            ],
                          )),
                    if (_cardType == CardType.word)
                      WordAddTypeWord(
                          _senseController,
                          _kanjiController,
                          _kanaController,
                          _noteController,
                          TextStyle(color: getDescriptionColorSubtle(context)),
                          onEditComplete),
                    if (_cardType == CardType.grammar)
                      WordAddTypeGrammar(
                          _senseController,
                          _kanjiController,
                          _kanaController,
                          _noteController,
                          TextStyle(color: getDescriptionColorSubtle(context)),
                          onEditComplete),
                    SizedBox(height: getPadding(PaddingType.xLarge)),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (widget.existingWord != null) ...[
                              Tooltip(
                                message: 'Reset progress',
                                child: ButtonAsync(
                                  "",
                                  () => showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            shape:
                                                getAlertDialogBorder(context),
                                            title: const Text(
                                                'Reset card progress'),
                                            content: Text(
                                                'Are you sure you want to reset your progress for "${widget.existingWord!.sense}"?'),
                                            actions: [
                                              ButtonAsync(
                                                'Yes',
                                                () async {
                                                  await cardsService
                                                      .resetCardProgress(widget
                                                          .existingWord!.id!);
                                                  Navigator.of(context).pop();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                        content: Text(
                                                            'Progress for "${widget.existingWord!.sense}" has been reset.')),
                                                  );
                                                },
                                                icon: Icons.check,
                                              ),
                                              Button(
                                                'No',
                                                () =>
                                                    Navigator.of(context).pop(),
                                                icon: Icons.cancel_outlined,
                                                type: ButtonType.secondary,
                                              ),
                                            ],
                                          )),
                                  icon: Icons.restart_alt_outlined,
                                  color: getDescriptionColor(context),
                                  size: ButtonSize.standard,
                                ),
                              ),
                              ButtonAsync(
                                "Delete",
                                () => showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text('Delete word'),
                                          content: Text(
                                              'Are you sure you want to delete "${widget.existingWord!.sense}" from your collection?'),
                                          actions: [
                                            ButtonAsync(
                                              'Yes',
                                              () async {
                                                await cardsService.deleteCard(
                                                    widget.existingWord!);

                                                // I need to pop twice here, once for the delete dialog and one for the overall card edit dialog
                                                Navigator.of(context).pop();
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icons.check,
                                            ),
                                            Button(
                                              'No',
                                              () => Navigator.of(context).pop(),
                                              icon: Icons.cancel_outlined,
                                              type: ButtonType.secondary,
                                            ),
                                          ],
                                        )),
                                //                                     ),
                                icon: Icons.delete_outline_outlined,
                                type: ButtonType.standard,
                                color: getDescriptionColor(context),
                                size: ButtonSize.standard,
                              ),
                            ],
                            ButtonAsync(
                              widget.existingWord != null ? 'Edit' : 'Add',
                              onEditComplete,
                              icon: widget.existingWord != null
                                  ? Icons.edit_outlined
                                  : Icons.add_circle_outline,
                              type: widget.existingWord == null
                                  ? ButtonType.primary
                                  : ButtonType.standard,
                              size: widget.existingWord == null
                                  ? ButtonSize.big
                                  : ButtonSize.standard,
                            )
                          ],
                        ))
                  ]),
            )));
  }
}
