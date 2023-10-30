import 'package:flutter/material.dart';
import 'package:learning_18/shared/skeletons/card_skeleton.dart';

class CoursesSkeleton extends StatelessWidget {
  const CoursesSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CardSkeleton(width: 80),
            CardSkeleton(width: 50),
          ],
        ),
        ...List.generate(
          3,
          (index) => const CardSkeleton(height: 100),
        ).toList()
      ],
    );
  }
}
