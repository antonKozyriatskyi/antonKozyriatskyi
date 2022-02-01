import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';
import 'package:anton_kozyriatskyi/ui/ContentSection.dart';

class AboutMeSection extends StatelessWidget {
  final String title;
  final String description;

  const AboutMeSection({
    Key? key,
    this.title = "About me",
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: title,
      child: SelectableText(
        description,
        style: context.textTheme().subtitle1,
      ),
    );
  }
}
