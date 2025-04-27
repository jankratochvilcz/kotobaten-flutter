import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';

class Shortcut {
  final String key;
  final String description;

  const Shortcut(this.key, this.description);
}

class SectionHeader extends Shortcut {
  const SectionHeader(String title) : super('', title);
}

class KeyboardMap extends HookConsumerWidget {
  const KeyboardMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const shortcuts = [
      SectionHeader('Navigation'),
      Shortcut('Ctrl + Shift + S', 'Go to search'),
      Shortcut('Ctrl + Shift + C', 'Go to collection'),
      Shortcut('Ctrl + Shift + P', 'Start practice'),
      SectionHeader('Global Actions'),
      Shortcut('Ctrl + Shift + A', 'Add new word'),
      Shortcut('Ctrl + Shift + H', 'Show this help'),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: bottomPadding(PaddingType.small),
          child: const Heading('Keyboard shortcuts', HeadingStyle.h2),
        ),
        ...shortcuts
            .map(
              (shortcut) => Row(
                children: [
                  if (shortcut is SectionHeader)
                    Padding(
                        padding: topPadding(PaddingType.standard),
                        child: Heading(shortcut.description, HeadingStyle.h3)),
                  if (shortcut is! SectionHeader)
                    SizedBox(
                      width: 100,
                      child: Text(
                        shortcut.key,
                        style: const TextStyle(fontFamily: 'monospace'),
                      ),
                    ),
                  if (shortcut is! SectionHeader)
                    Text(
                      shortcut.description,
                    ),
                ],
              ),
            )
            .toList(),
      ],
    );
  }
}
