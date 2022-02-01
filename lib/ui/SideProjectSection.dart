import 'package:anton_kozyriatskyi/models/Project.dart';
import 'package:anton_kozyriatskyi/ui/ContentSection.dart';
import 'package:anton_kozyriatskyi/ui/ProjectTile.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SideProjectsSection extends StatelessWidget {
  final List<Project> projects;

  const SideProjectsSection({
    Key? key,
    required this.projects,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: "Side Projects",
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: projects.mapIndexed<Widget>(
            (index, project) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: index != projects.length ? 16 : 0,
                ),
                child: ProjectTile(project: project),
              );
            },
          ).toList(growable: false),
        ),
      ),
    );
  }
}
