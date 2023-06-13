import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double radius;
  Color? color;
  final Widget? child;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  DetailsContainer(
      {Key? key,
      this.height,
      this.width,
      this.radius = 0.0,
      this.color,
      this.child,
      this.marginLeft = 0.0,
      this.marginRight = 0.0,
      this.marginTop = 0.0,
      this.marginBottom = 0.0,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
          left: marginLeft!,
          right: marginRight!,
          top: marginTop!,
          bottom: marginBottom!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: color,
      ),
      child: child,
    );
  }
}
