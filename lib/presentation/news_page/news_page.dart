import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import 'widgets/listqatarworldc_item_widget.dart';
import 'widgets/newscard1_item_widget.dart';
import 'widgets/qatarworldcup_item_widget.dart'; // ignore_for_file: must_be_immutable

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  NewsPageState createState() => NewsPageState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin<NewsPage> {
  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildNewsCard(context),
                      SizedBox(height: 19.v),
                      _buildFifaWorldCup(context),
                      SizedBox(height: 23.v),
                      _buildCricketWorld(context),
                      _buildTheBig(context),
                      _buildClose(context),
                      SizedBox(height: 22.v),
                      _buildQatarWorldCup(context),
                      SizedBox(height: 21.v),
                      _buildRowFifaWorldCup(
                        context,
                        title: "Fifa World Cup",
                        viewAllText: "View all",
                      ),
                      SizedBox(height: 17.v),
                      _buildStackArrowLeft(context),
                      SizedBox(height: 9.v),
                      SizedBox(
                        width: 358.h,
                        child: Text(
                          "keep an eye on the stadium |Round of 16 | Fifa World Cup Qatar",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewsCard(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
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
            return Newscard1ItemWidget();
          },
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
    );
  }

  /// Section Widget
  Widget _buildFifaWorldCup(BuildContext context) {
    return Column(
      children: [
        _buildRowFifaWorldCup(
          context,
          title: "Fifa World Cup",
          viewAllText: "View all",
        ),
        SizedBox(height: 17.v),
        SizedBox(
          height: 202.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListqatarworldcItemWidget();
            },
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCricketWorld(BuildContext context) {
    return Container(
      width: 358.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Cricket World Cup",
            style: CustomTextStyles.titleLargeWhiteA700,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTheBig(BuildContext context) {
    return Container(
      height: 252.v,
      width: 358.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame43866252x358,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 86.v,
              width: 358.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.black90001.withOpacity(0),
                    appTheme.black90001
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 45.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "the big decisions that set upwin",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      Text(
                        "Cricket",
                        style: CustomTextStyles.labelLargeRedA200_1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "·",
                          style: CustomTextStyles.labelLargeBluegray100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Wed 12/16 ",
                          style: CustomTextStyles.labelLargeBluegray100_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "·",
                          style: CustomTextStyles.labelLargeBluegray100,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "8:30 PM",
                          style: CustomTextStyles.labelLargeBluegray100_1,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 24.v,
                width: 8.h,
                margin: EdgeInsets.only(bottom: 14.v),
              ),
              Expanded(
                child: Container(
                  width: 264.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Rare record for Roots during Bangladesh ODI",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightBlueGray100,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 26.h,
                  top: 10.v,
                  bottom: 10.v,
                ),
              )
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 24.v,
                width: 8.h,
                margin: EdgeInsets.only(bottom: 17.v),
              ),
              Expanded(
                child: Container(
                  width: 234.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Cricket Australia respond quickly to Warner's decision on leadership ban",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightBlueGray100,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  top: 11.v,
                  bottom: 14.v,
                ),
              )
            ],
          ),
          SizedBox(height: 13.v),
          _buildBcciIssues(
            context,
            text:
                "Root's reign over as Labuschagne has Richards and Kohli in sights as new No.1 ranked batte",
          ),
          SizedBox(height: 15.v),
          _buildBcciIssues(
            context,
            text:
                "BCCI issues update after India captain Rohit Sharma suffers injury",
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQatarWorldCup(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fifa World Cup",
              style: theme.textTheme.titleLarge,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 3.v),
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
        ),
        SizedBox(height: 17.v),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return QatarworldcupItemWidget();
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackArrowLeft(BuildContext context) {
    return SizedBox(
      height: 237.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle19227x358,
            height: 227.v,
            width: 358.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 21.v,
                  width: 8.h,
                ),
                Container(
                  width: 115.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 29.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.black,
                  child: Text(
                    "Read more",
                    style: CustomTextStyles.titleMediumBebasNeueGray50,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle7Black90001,
                  height: 21.v,
                  width: 8.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBcciIssues(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 24.v,
          width: 8.h,
          margin: EdgeInsets.only(bottom: 17.v),
        ),
        Expanded(
          child: Container(
            width: 248.h,
            margin: EdgeInsets.only(left: 9.h),
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallBluegray900.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray100,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 14.v,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildRowFifaWorldCup(
    BuildContext context, {
    required String title,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                viewAllText,
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
        )
      ],
    );
  }
}
