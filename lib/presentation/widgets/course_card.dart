import 'package:flutter/material.dart';
import 'package:learning_18/data/models/course/course_response.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: appBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(iconMatematika),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  course.courseName ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '0/50 Paket latihan soal',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                const LinearProgressIndicator(
                  value: 0.3,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
