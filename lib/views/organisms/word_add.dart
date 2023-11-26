import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/organisms/word_add/type_grammar.dart';
import 'package:kotobaten/views/organisms/word_add/type_word.dart';

showWordAddBottomSheet(
        BuildContext context,
        Future<card_entity.CardInitialized> Function(card_entity.Card card)
            onSubmit,
        {card_entity.CardInitialized? existingWord}) =>
    MediaQuery.of(context).size.width < 600
        ? showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: defaultBottomSheetShape,
            builder: (context) =>
                WordAddDialogContents(onSubmit, existingWord: existingWord))
        : showDialog(
            context: context,
            builder: (context) => AlertDialog(
                content: WordAddDialogContents(onSubmit,
                    existingWord: existingWord)));

class WordAddDialogContents extends HookConsumerWidget {
  final Future<card_entity.CardInitialized> Function(card_entity.Card card)
      onSubmit;
  final card_entity.CardInitialized? existingWord;

  const WordAddDialogContents(this.onSubmit, {Key? key, this.existingWord})
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
        ));
  }
}

class WordAddForm extends StatefulWidget {
  final Future Function(card_entity.Card card) _onSubmit;
  final card_entity.CardInitialized? existingWord;

  const WordAddForm(this._onSubmit, {Key? key, this.existingWord})
      : super(key: key);

  @override
  _WordAddFormState createState() => _WordAddFormState();
}

class _WordAddFormState extends State<WordAddForm> {
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
              _cardType));
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
                            ButtonAsync(
                              widget.existingWord != null ? 'Edit' : 'Add',
                              onEditComplete,
                              icon: widget.existingWord != null
                                  ? Icons.edit_outlined
                                  : Icons.add_circle_outline,
                              type: ButtonType.primary,
                              size: ButtonSize.big,
                            )
                          ],
                        ))
                  ]),
            )));
  }
}
