import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';

class ContentSection extends StatelessWidget {
  final String title;
  final Widget child;

  const ContentSection({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          title,
          style: context.textTheme().headline5,
        ),
        SizedBox(height: 16),
        child,
      ],
    );
  }
}
