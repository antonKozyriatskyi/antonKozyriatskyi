import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';
import 'package:anton_kozyriatskyi/models/Profile.dart';

class InfoPanelHeader extends StatelessWidget {
  final Profile profile;

  const InfoPanelHeader({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme();
    final textTheme = theme.primaryTextTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SelectableText(
          "${profile.name}\n${profile.surname}",
          textAlign: TextAlign.center,
          style: textTheme.headline5,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 24,
          child: Divider(
            color: theme.dividerColor,
            thickness: 2,
          ),
        ),
        const SizedBox(height: 16),
        SelectableText(
          profile.position.toUpperCase(),
          textAlign: TextAlign.center,
          style: textTheme.caption,
        )
      ],
    );
  }
}