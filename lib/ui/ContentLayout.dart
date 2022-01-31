import 'package:flutter/material.dart';

class ContentLayout extends StatelessWidget {
  final Widget child;

  const ContentLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 48),
      child: child,
    );
  }
}
