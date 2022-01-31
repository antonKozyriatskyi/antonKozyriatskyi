import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/Education.dart';
import 'package:anton_kozyriatskyi/ui/InfoSection.dart';

class EducationSection extends StatelessWidget {

  final String title;
  final Education education;

  const EducationSection({
    Key? key,
    this.title = "Education",
    required this.education,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoSection(
      title,
      [
        SelectableText(
          "Masters degree in ${education.mastersDegree} from ${education.mastersUniversity}",
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
      ],
    );
  }
}
