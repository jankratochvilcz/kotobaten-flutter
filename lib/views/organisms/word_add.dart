import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/card.dart' as card_model;
import 'package:kotobaten/views/molecules/button.dart';

const _hintTextStyle = TextStyle(color: Colors.black12);

showWordAddBottomSheet(BuildContext context,
        Future<card_model.Card?> Function(card_model.Card card) onSubmit,
        {card_model.CardInitialized? existingWord}) =>
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: defaultBottomSheetShape,
        builder: (context) => Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: WordAddForm(
              (card) async {
                final createdCard = await onSubmit(card);

                if (createdCard == null) {
                  return;
                }

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Card for ${createdCard.sense} created.')));
              },
              existingWord: existingWord,
            )));

class WordAddForm extends StatefulWidget {
  final void Function(card_model.Card card) _onSubmit;
  final card_model.CardInitialized? existingWord;

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
    onEditComplete() {
      if (_formKey.currentState!.validate()) {
        if (widget.existingWord?.id != null) {
          widget._onSubmit(card_model.Card(
              widget.existingWord!.id,
              _senseController.text,
              _kanaController.text,
              _kanjiController.text,
              _noteController.text));
        } else {
          widget._onSubmit(card_model.Card.newCard(
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
                      hintText: 'e.g., to make sure',
                      hintStyle: _hintTextStyle),
                ),
                SizedBox(
                  height: getPadding(PaddingType.small),
                ),
                TextFormField(
                  controller: _kanjiController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      labelText: 'Kanji (optional)',
                      hintText: 'e.g., 確かめる',
                      hintStyle: _hintTextStyle),
                ),
                SizedBox(
                  height: getPadding(PaddingType.small),
                ),
                TextFormField(
                  controller: _kanaController,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      labelText: 'Kana',
                      hintText: 'e.g., たしかめる',
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
                      hintText: '父は寝る前に、電気が消えているのを確かめる。'),
                ),
                SizedBox(height: getPadding(PaddingType.large)),
                Align(
                    alignment: Alignment.centerRight,
                    child: Button(
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
