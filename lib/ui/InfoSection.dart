import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const InfoSection(
    this.title,
    this.children, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).primaryTextTheme.headline6
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      );
}
