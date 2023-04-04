import 'package:flutter/material.dart';

class MaxWidthBox extends StatelessWidget {
  final double? maxWidth;

  /// Control the internal Stack alignment. This widget
  /// uses a Stack to set the widget to max width on top of
  /// a background.
  /// Defaults to [Alignment.topCenter] because app
  /// content is usually top aligned.
  final AlignmentGeometry alignment;
  final Widget child;
  final Widget? background;

  const MaxWidthBox(
      {Key? key,
      required this.maxWidth,
      required this.child,
      this.background,
      this.alignment = Alignment.topCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: [
        background ?? const SizedBox.shrink(),
        SizedBox(width: maxWidth, child: child),
      ],
    );
  }
}
