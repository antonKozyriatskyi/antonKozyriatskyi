import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/LanguageKnowledge.dart';
import 'package:anton_kozyriatskyi/models/Profile.dart';
import 'package:anton_kozyriatskyi/ui/InfoSection.dart';
import 'package:anton_kozyriatskyi/ui/WorkplaceTile.dart';

import 'ContentLayout.dart';

class LanguageSection extends StatelessWidget {
  final String title;
  final List<LanguageKnowledge> languageKnowledge;

  const LanguageSection({
    Key? key,
    this.title = "Language knowledge",
    required this.languageKnowledge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoSection(
      title,
      [
        ListView.builder(
          shrinkWrap: true,
          itemCount: languageKnowledge.length,
          itemBuilder: (context, index) {
            final isLast = index == languageKnowledge.length - 1;
            final knowledge = languageKnowledge[index];
            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 8),
              child: SelectableText(
                "${knowledge.language} - ${knowledge.level}",
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
            );
          },
        ),
      ],
    );
  }
}
