import 'package:flutter/material.dart';

class CardSkeleton extends StatelessWidget {
  final double? height;
  final double? width;

  const CardSkeleton({this.height = 20, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: height,
      width: width ?? double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
