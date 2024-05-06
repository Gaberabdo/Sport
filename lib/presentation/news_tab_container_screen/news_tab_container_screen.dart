import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../dashboard_page/dashboard_page.dart';
import '../news_page/news_page.dart';

class NewsTabContainerScreen extends StatefulWidget {
  const NewsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NewsTabContainerScreenState createState() => NewsTabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NewsTabContainerScreenState extends State<NewsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 1740.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            NewsPage(),
                            NewsPage(),
                            NewsPage(),
                            NewsPage()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAirplane,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Sportify".toUpperCase(),
        margin: EdgeInsets.only(left: 6.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEntypoBell,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 35.v,
      width: 374.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.gray50,
        unselectedLabelColor: appTheme.black90001,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.black,
                  child: Text(
                    "🔥 Trending",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 35.v,
                  width: 8.h,
                  margin: EdgeInsets.only(left: 12.h),
                )
              ],
            ),
          ),
          Tab(
            child: Text(
              "⚽ Football",
            ),
          ),
          Tab(
            child: Text(
              "🏀 Basketball",
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserWhiteA700,
                  height: 35.v,
                  width: 8.h,
                ),
                Container(
                  width: 82.h,
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Text(
                    "🏏 Cricket",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.User:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Userwhitea700:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      default:
        return DefaultWidget();
    }
  }
}
