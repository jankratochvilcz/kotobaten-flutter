import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/card.dart' as card_model;
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';

class WordAddForm extends StatefulWidget {
  final void Function(card_model.Card card) _onSubmit;

  const WordAddForm(this._onSubmit, {Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: allPadding(PaddingType.large),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Heading('Add word', HeadingStyle.h2)),
                SizedBox(height: getPadding(PaddingType.standard)),
                TextFormField(
                  controller: _senseController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Add a meaning for the word you\'re adding';
                    }

                    return null;
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                      helperText: 'Meaning', hintText: 'to make sure'),
                ),
                TextFormField(
                  controller: _kanjiController,
                  decoration: const InputDecoration(
                      helperText: 'Kanji (optional)', hintText: '確かめる'),
                ),
                TextFormField(
                  controller: _kanaController,
                  decoration: const InputDecoration(
                      helperText: 'Kana', hintText: 'たしかめる'),
                ),
                TextFormField(
                  controller: _noteController,
                  decoration: const InputDecoration(
                    helperText: 'Note (optional)',
                  ),
                ),
                SizedBox(height: getPadding(PaddingType.large)),
                Align(
                    alignment: Alignment.centerRight,
                    child: Button(
                      'Add',
                      () {
                        if (_formKey.currentState!.validate()) {
                          widget._onSubmit(card_model.Card.newCard(
                              _senseController.text,
                              _kanaController.text,
                              _kanjiController.text,
                              _noteController.text));
                        }
                      },
                      icon: Icons.add_circle_outline,
                      type: ButtonType.primary,
                      size: ButtonSize.big,
                    ))
              ]),
        ));
  }
}
