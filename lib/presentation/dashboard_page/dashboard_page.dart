import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/dashboardgrid_item_widget.dart';
import 'widgets/newscard_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  int sliderIndex1 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 7.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Team, sport or venue",
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildNewsCardSlider(context),
                  SizedBox(height: 22.v),
                  _buildFifaWorldColumn(context),
                  SizedBox(height: 22.v),
                  _buildAllLeaguesColumn(context),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _buildPopularLeaguesRow(
                      context,
                      title: "Popular Leagues",
                      viewallTwo: "View all",
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildDashboardGrid(context)
                ],
              ),
            ),
          ),
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
  Widget _buildNewsCardSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 190.v,
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
                return NewscardItemWidget();
              },
            ),
          ),
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
    );
  }

  /// Section Widget
  Widget _buildFifaWorldColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fifa World Cup",
                  style: theme.textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "View all",
                        style: CustomTextStyles.labelLargeRedA200,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 112.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex1 = index;
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return UserprofileItemWidget();
            },
          ),
          SizedBox(height: 8.v),
          SizedBox(
            height: 8.v,
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex1,
              count: 2,
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
    );
  }

  /// Section Widget
  Widget _buildAllLeaguesColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: _buildPopularLeaguesRow(
              context,
              title: "All Leagues",
              viewallTwo: "View all",
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 123.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 24.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return ViewhierarchyItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboardGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: GridView.builder(
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
          return DashboardgridItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildPopularLeaguesRow(
    BuildContext context, {
    required String title,
    required String viewallTwo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            viewallTwo,
            style: CustomTextStyles.labelLargeRedA200.copyWith(
              color: appTheme.redA200,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 18.adaptSize,
          width: 18.adaptSize,
        )
      ],
    );
  }
}
