import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';
import 'package:anton_kozyriatskyi/models/Project.dart';
import 'package:anton_kozyriatskyi/models/Workplace.dart';
import 'package:anton_kozyriatskyi/ui/ProjectTile.dart';
import 'package:collection/collection.dart';

class WorkplaceTile extends StatelessWidget {
  final Workplace workplace;
  final DateFormat dateFormatter = DateFormat("MM/yyyy");

  List<Project> get projects => workplace.projects;

  WorkplaceTile({
    Key? key,
    required this.workplace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();

    final endDate = workplace.endDate;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              workplace.company,
              style: textTheme.headline6,
            ),
            const SizedBox(width: 8),
            Text(
              "${dateFormatter.format(workplace.startDate)} - ${endDate != null ? dateFormatter.format(endDate) : "Now"}",
              style: textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: _buildProjectsList(context),
        ),
      ],
    );
  }

  Widget _buildProjectsList(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: projects.mapIndexed<Widget>(
        (index, project) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: index != projects.length - 1 ? 16 : 0,
            ),
            child: ProjectTile(project: project),
          );
        },
      ).toList(growable: false),
    );
  }
}
