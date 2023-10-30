import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_18/data/models/banner/banner_response.dart';
import 'package:learning_18/utils/app_constant.dart';

class HomeListBannerCard extends StatelessWidget {
  final BannerResponseModel bannerResponseModel;
  const HomeListBannerCard({required this.bannerResponseModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Terbaru",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.maxFinite,
          height: 120,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            itemCount: bannerResponseModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              final banner = bannerResponseModel.data?[index];
              log("${banner?.eventImage}");
              return Container(
                // height: 100,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      banner?.eventImage ?? "",
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 6),
          ),
        ),
      ],
    );
  }
}
