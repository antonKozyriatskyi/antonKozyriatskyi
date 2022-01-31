import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';

class TwoPaneLayout extends StatefulWidget {
  final WidgetBuilder leftChild;
  final WidgetBuilder rightChild;
  final double minLeftPanelWidth;
  final double minRightPanelWidth;
  final Color? leftPanelBackgroundColor;

  const TwoPaneLayout({
    Key? key,
    required this.leftChild,
    required this.rightChild,
    this.minLeftPanelWidth = 400,
    this.minRightPanelWidth = 500,
    this.leftPanelBackgroundColor,
  }) : super(key: key);

  @override
  State<TwoPaneLayout> createState() => _TwoPaneLayoutState();
}

class _TwoPaneLayoutState extends State<TwoPaneLayout> {
  late Widget _leftChild;
  late Widget _rightChild;

  @override
  void initState() {
    super.initState();

    _leftChild = widget.leftChild(context);
    _rightChild = widget.rightChild(context);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.biggest.width;
        final maxHeight = constraints.biggest.height;

        final orientation =
            maxWidth >= (widget.minLeftPanelWidth + widget.minRightPanelWidth)
                ? Orientation.landscape
                : Orientation.portrait;

        final isLandscape = orientation == Orientation.landscape;

        final lChildWidth = isLandscape ? widget.minLeftPanelWidth : maxWidth;

        final rChildWidth =
            isLandscape ? maxWidth - widget.minLeftPanelWidth : maxWidth;

        final children = [
          Container(
            color: widget.leftPanelBackgroundColor ?? context.theme().primaryColor,
            constraints: BoxConstraints.tightFor(
              width: lChildWidth,
              height: maxHeight
            ),
            child: isLandscape
                ? SingleChildScrollView(
                    child: _leftChild,
                  )
                : _leftChild,
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: rChildWidth,
            ),
            child: isLandscape
                ? SingleChildScrollView(
                    child: _rightChild,
                  )
                : _rightChild,
          ),
        ];

        return isLandscape
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              )
            : ListView(children: children);
      },
    );
  }
}
