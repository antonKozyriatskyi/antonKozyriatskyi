// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:anton_kozyriatskyi/ext/BuildContext.dart';
import 'package:anton_kozyriatskyi/ext/List.dart';
import 'package:anton_kozyriatskyi/models/all_models.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  const ProjectTile({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          project.name,
          style: textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          project.description,
          style: textTheme.bodyText2,
        ),
        const SizedBox(height: 8),
        if (project.keyPoints.isNotEmpty) ..._buildKeyPoints(),
        if (project.technologies.isNotEmpty) ..._buildTechnologies(),
        if (project.links != null) _buildLinks(project.links!),
      ],
    );
  }

  List<Widget> _buildKeyPoints() => [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: project.keyPoints
              .mapIndexed(
                (index, element) => Padding(
                  padding: EdgeInsets.only(
                      bottom: index == project.keyPoints.length - 1 ? 0 : 1),
                  child: Text("• ${project.keyPoints[index]}"),
                ),
              )
              .toList(growable: false),
        ),
        const SizedBox(height: 8),
      ];

  List<Widget> _buildTechnologies() {
    return [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Tech stack:"),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              project.technologies.join(", "),
            ),
          ),
        ],
      ),
      const SizedBox(height: 4),
    ];
  }

  Widget _buildLinks(Links links) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("Download: "),
            const SizedBox(width: 4),
            ...[
              _Pair(links.playStore, "google_play_logo.svg"),
              _Pair(links.appStore, "app_store_logo.svg"),
            ]
                .where((element) => element.first != null)
                .map(
                  (link) => _buildLink(
                    link.first!,
                    link.second,
                    () => _openUrl(link.first!, true),
                  ),
                )
                .separated(() => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text("/"),
                    ))
                .toList(),
          ],
        ),
        const SizedBox(height: 4),
      ],
    );
  }

  Widget _buildLink(String link, String icon, VoidCallback onTap) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          icon,
          width: 24,
          height: 24,
        ),
      ),
    );
  }

  void _openUrl(String url, [bool newTab = false]) {
    js.context.callMethod('open', [url, newTab ? '_blank' : '_self']);
  }
}

class _Pair<A, B> {
  final A first;
  final B second;

  _Pair(this.first, this.second);
}
