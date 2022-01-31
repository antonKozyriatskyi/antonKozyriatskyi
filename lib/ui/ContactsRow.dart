import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactRow extends StatelessWidget {

  final IconData? iconData;
  final String? svgPath;
  final String text;
  final ValueChanged<String> onTap;

  const ContactRow({
    Key? key,
    this.iconData,
    this.svgPath,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.onPrimary;
    return Row(
      children: [
        if (iconData != null)
          Icon(
            iconData,
            color: iconColor,
          ),
        if (svgPath != null)
          SvgPicture.asset(
            svgPath!,
            color: iconColor,
          ),
        SizedBox(width: 16),
        GestureDetector(
          onTap: () => onTap(text),
          // onTapDown: (details) => onTap(text),
          child: Text(
            text,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
        )
      ],
    );
  }
}