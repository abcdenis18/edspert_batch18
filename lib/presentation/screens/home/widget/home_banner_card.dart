import 'package:flutter/material.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class HomeBannerCard extends StatelessWidget {
  const HomeBannerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: appPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Text(
            textBannerText,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                imageHomeBannerPerson,
              ),
            ),
          )
        ],
      ),
    );
  }
}
