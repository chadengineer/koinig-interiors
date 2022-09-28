import 'package:flutter/cupertino.dart';
import 'package:konig_interiors/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width, height;
  final Color? color;

  const BorderBox(
      {super.key,
      required this.child,
      this.padding,
      this.width,
      this.height,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height ?? 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: (color ?? BRAND_GREEN),
            border: Border.all(width: 0, color: BRAND_GREY)),
        child: child,
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
