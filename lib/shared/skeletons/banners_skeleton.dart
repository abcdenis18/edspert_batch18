import 'package:flutter/material.dart';
import 'package:learning_18/shared/skeletons/card_skeleton.dart';

class BannersSkeleton extends StatelessWidget {
  const BannersSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CardSkeleton(width: 80),
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          height: 120,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(.05),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
