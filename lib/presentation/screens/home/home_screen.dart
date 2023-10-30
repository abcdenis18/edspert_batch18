import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_18/common/view_state.dart';
import 'package:learning_18/data/datasource/remote/banner/banner_remote_datasource.dart';
import 'package:learning_18/data/datasource/remote/course/course_remote_datasource.dart';
import 'package:learning_18/data/models/banner/banner_response.dart';
import 'package:learning_18/data/models/course/course_response.dart';
import 'package:learning_18/presentation/screens/home/widget/home_banner_card.dart';
import 'package:learning_18/presentation/screens/home/widget/home_exams_card.dart';
import 'package:learning_18/presentation/screens/home/widget/home_list_banner_card.dart';
import 'package:learning_18/shared/skeletons/banners_skeleton.dart';
import 'package:learning_18/shared/skeletons/courses_skeleton.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CourseRemoteDatasource courseRemoteDatasource =
      CourseRemoteDatasource();

  CourseReponseModel courseReponseModel = CourseReponseModel();
  ViewState viewState = ViewState.initial;

  BannerRemoteDatasource bannerRemoteDatasource = BannerRemoteDatasource();
  BannerResponseModel bannerResponseModel = BannerResponseModel();
  ViewState bannerViewState = ViewState.initial;

  @override
  void initState() {
    // TODO: implement initState
    getCourses();
    getBanners();
    super.initState();
  }

  void getCourses() async {
    setState(() {
      viewState = ViewState.loading;
    });

    final response = await courseRemoteDatasource.getCourse();

    setState(() {
      viewState = ViewState.success;
      courseReponseModel = response;
    });
  }

  void getBanners() async {
    setState(() {
      bannerViewState = ViewState.loading;
    });

    final response = await bannerRemoteDatasource.getBanner();

    setState(() {
      bannerViewState = ViewState.success;
      bannerResponseModel = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$textHello, Username',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  textWelcome,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const CircleAvatar(
              foregroundImage: NetworkImage(
                "https://e1.pxfuel.com/desktop-wallpaper/725/928/desktop-wallpaper-profile-pic-tiktok-profile-cartoon-characters-tiktok-pfp.jpg",
              ),
            )
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          getCourses();
          getBanners();
        },
        child: ListView(
          padding: appPadding,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            const HomeBannerCard(),
            const SizedBox(height: 16),
            viewState == ViewState.success
                ? HomeExamsCard(courseReponseModel: courseReponseModel)
                : const CoursesSkeleton(),
            const SizedBox(height: 16),
            bannerViewState == ViewState.success
                ? HomeListBannerCard(bannerResponseModel: bannerResponseModel)
                : const BannersSkeleton(),
          ],
        ),
      ),
    );
  }
}
