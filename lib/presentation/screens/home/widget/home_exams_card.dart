import 'package:flutter/material.dart';
import 'package:learning_18/data/models/course/course_response.dart';
import 'package:learning_18/presentation/widgets/course_card.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class HomeExamsCard extends StatelessWidget {
  final CourseReponseModel courseReponseModel;
  const HomeExamsCard({required this.courseReponseModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              textTitleChooseExam,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                textSeeMore,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: appPrimaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 250,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemBuilder: (context, index) {
              final data = courseReponseModel.data?[index];

              return CourseCard(course: data ?? Course());
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: courseReponseModel.data?.length ?? 0,
          ),
        ),
      ],
    );
  }
}
