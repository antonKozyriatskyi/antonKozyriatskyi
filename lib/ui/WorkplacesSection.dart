import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/Workplace.dart';
import 'package:anton_kozyriatskyi/ui/ContentSection.dart';
import 'package:anton_kozyriatskyi/ui/WorkplaceTile.dart';
import 'package:collection/collection.dart';

class WorkplacesSection extends StatelessWidget {

  final String title;
  final List<Workplace> workplaces;

  const WorkplacesSection({
    Key? key,
    this.title = "Employment history",
    required this.workplaces,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: workplaces.mapIndexed<Widget>((index, workplace) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: index != workplaces.length - 1 ? 16 : 0,
            ),
            child: WorkplaceTile(workplace: workplace),
          );
        }).toList(growable: false),
      ),
    );
  }
}
