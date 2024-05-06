import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../dashboard_page/dashboard_page.dart';
import 'widgets/viewhierarchy1_item_widget.dart';
import 'widgets/watchlivebutton_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class WatchLiveScreen extends StatelessWidget {
  WatchLiveScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame1,
                          height: 208.v,
                          width: 357.h,
                        ),
                        SizedBox(height: 14.v),
                        _buildRowPrice(context),
                        SizedBox(height: 19.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame43899,
                          height: 1.v,
                          width: 350.h,
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                "Dec 6,2022",
                                style: theme.textTheme.bodySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  "2min",
                                  style: theme.textTheme.bodySmall,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Container(
                          width: 341.h,
                          margin: EdgeInsets.only(right: 15.h),
                          child: Text(
                            "Watch sports live or highlights, read every news from your smartphone. Al Rayyan on Tuesday,  at education city stadium. FIFA world cup qatar",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallBlack90001,
                          ),
                        ),
                        SizedBox(height: 26.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Featured Match",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildViewhierarchy(context),
                        SizedBox(height: 18.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Featured Match",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildWatchLiveButton(context),
                        SizedBox(height: 8.v),
                        SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: sliderIndex,
                            count: 1,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 3,
                              activeDotColor: appTheme.redA200,
                              dotColor: appTheme.blueGray100,
                              dotHeight: 8.v,
                              dotWidth: 8.h,
                            ),
                          ),
                        )
                      ],
                    ),
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
  Widget _buildRowPrice(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: 300.h,
            child: Text(
              "keep an eye on the stadium |Round of 16 | Fifa World Cup Qatar",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSend,
          height: 22.v,
          width: 15.h,
          margin: EdgeInsets.only(
            left: 37.h,
            bottom: 30.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildViewhierarchy(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 218.v,
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Viewhierarchy1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildWatchLiveButton(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 279.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          sliderIndex = index;
        },
      ),
      itemCount: 1,
      itemBuilder: (context, index, realIndex) {
        return WatchlivebuttonItemWidget();
      },
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
