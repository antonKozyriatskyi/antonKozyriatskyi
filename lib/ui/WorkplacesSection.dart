import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/Workplace.dart';
import 'package:anton_kozyriatskyi/ui/ContentSection.dart';
import 'package:anton_kozyriatskyi/ui/WorkplaceTile.dart';

// ignore: must_be_immutable
class WorkplacesSection extends StatelessWidget {

  final String title;
  final List<Workplace> workplaces;

  WorkplacesSection({
    Key? key,
    this.title = "Employment history",
    required this.workplaces,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: title,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: workplaces.length,
        itemBuilder: (context, index) {
          final workplace = workplaces[index];

          return Padding(
            padding: EdgeInsets.only(
              bottom: index != workplaces.length - 1 ? 16 : 0,
            ),
            child: WorkplaceTile(workplace: workplace),
          );
        },
      ),
    );
  }
}
