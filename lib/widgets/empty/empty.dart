import 'package:flutter/material.dart';

/// 空占位
class Empty extends StatelessWidget {
  const Empty({
    Key? key,
    this.opacity = 0.4,
    this.padding = const EdgeInsets.all(0),
    this.height,
    this.width,
  }) : super(key: key);

  /// 透明度
  final double opacity;

  final EdgeInsetsGeometry padding;

  /// 图片高度
  final double? height;

  /// 图片宽度
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Opacity(
        opacity: opacity,
        child: Column(
          children: [
            Padding(
              padding: padding,
              child: Image.asset(
                "assets/images/woolly/woolly-password-1.png",
                height: height,
                width: width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
