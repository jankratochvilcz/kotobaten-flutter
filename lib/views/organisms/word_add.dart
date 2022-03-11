import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';

const _hintTextStyle = TextStyle(color: Colors.black12);

showWordAddBottomSheet(
        BuildContext context,
        Future<card_entity.CardInitialized> Function(card_entity.Card card)
            onSubmit,
        {card_entity.CardInitialized? existingWord}) =>
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: defaultBottomSheetShape,
        builder: (context) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: WordAddForm(
              (card) async {
                final createdCard = await onSubmit(card);

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Card for ${createdCard.sense} created.')));
              },
              existingWord: existingWord,
            )));

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

  @override
  void initState() {
    super.initState();

    if (widget.existingWord != null) {
      _senseController.text = widget.existingWord?.sense ?? '';
      _kanjiController.text = widget.existingWord?.kanji ?? '';
      _kanaController.text = widget.existingWord?.kana ?? '';
      _noteController.text = widget.existingWord?.note ?? '';
    }
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
              _noteController.text));
        } else {
          return widget._onSubmit(card_entity.Card.newCard(
              _senseController.text,
              _kanaController.text,
              _kanjiController.text,
              _noteController.text));
        }
      }
    }

    return Form(
        key: _formKey,
        child: Padding(
          padding: allPadding(PaddingType.large),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _senseController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Add a meaning for the word you\'re adding';
                    }

                    return null;
                  },
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      labelText: 'Meaning',
                      hintText: 'Word in your native language.',
                      hintStyle: _hintTextStyle),
                ),
                SizedBox(
                  height: getPadding(PaddingType.small),
                ),
                TextFormField(
                  controller: _kanjiController,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if ((value == null || value.isEmpty) &&
                        (_kanaController.text.isEmpty)) {
                      return 'Fill in either the kanji or kana.';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: 'Kanji',
                      hintText: 'Skip if you\'re not learning kanji yet.',
                      hintStyle: _hintTextStyle),
                ),
                SizedBox(
                  height: getPadding(PaddingType.small),
                ),
                TextFormField(
                  controller: _kanaController,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if ((value == null || value.isEmpty) &&
                        (_kanjiController.text.isEmpty)) {
                      return 'You need to fill in at least either the kanji or kana.';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: 'Kana',
                      hintText: 'Pronounciation of the word in hiragana.',
                      hintStyle: _hintTextStyle),
                ),
                SizedBox(
                  height: getPadding(PaddingType.small),
                ),
                TextFormField(
                  onEditingComplete: onEditComplete,
                  controller: _noteController,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      labelText: 'Note (optional)',
                      hintStyle: _hintTextStyle,
                      hintText: 'Anything worth noting down about the word.'),
                ),
                SizedBox(height: getPadding(PaddingType.large)),
                Align(
                    alignment: Alignment.centerRight,
                    child: ButtonAsync(
                      widget.existingWord != null ? 'Edit word' : 'Add word',
                      onEditComplete,
                      icon: widget.existingWord != null
                          ? Icons.edit_outlined
                          : Icons.add_circle_outline,
                      type: ButtonType.primary,
                      size: ButtonSize.big,
                    ))
              ]),
        ));
  }
}
