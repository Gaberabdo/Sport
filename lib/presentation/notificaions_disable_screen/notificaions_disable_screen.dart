import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_switch.dart';
import '../dashboard_page/dashboard_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificaionsDisableScreen extends StatelessWidget {
  NotificaionsDisableScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup196,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 7.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildRowAllow(context),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "League Alerts",
                              style: CustomTextStyles.titleLargeBluegray900,
                            ),
                          ),
                          SizedBox(height: 17.v),
                          _buildRowKisspng(context),
                          SizedBox(height: 2.v),
                          _buildRowChelsea(
                            context,
                            userImage: ImageConstant.imgKisspng201617,
                            userName: "Games & stats",
                            onText: "Off",
                          ),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Team Alerts",
                              style: CustomTextStyles.titleLargeBluegray900,
                            ),
                          ),
                          SizedBox(height: 18.v),
                          _buildRowChelsea(
                            context,
                            userImage:
                                ImageConstant.img580b57fcd9996e24bc43c4e1,
                            userName: "Chelsea",
                            onText: "On",
                          ),
                          SizedBox(height: 2.v),
                          _buildRowChelsea(
                            context,
                            userImage:
                                ImageConstant.img580b57fcd9996e24bc43c4e8,
                            userName: "Leicester city",
                            onText: "Off",
                          ),
                          SizedBox(height: 2.v),
                          _buildRowOffTwo(context),
                          SizedBox(height: 2.v),
                          _buildRowArsenal(context),
                          SizedBox(height: 2.v),
                          _buildRowManUnited(context)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
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
      height: 56.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack90001,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "Notification",
        margin: EdgeInsets.only(left: 9.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowAllow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Allow notifications",
            style: CustomTextStyles.titleMediumBlack90001,
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              top: 2.v,
              right: 8.h,
              bottom: 2.v,
            ),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowKisspng(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgKisspng201617,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "premiere league".toUpperCase(),
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 219.h,
                  child: Text(
                    "Breaking news, editors picks, benefits & Rewards",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBluegray900,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 8.h,
              bottom: 18.v,
            ),
            child: Text(
              "On",
              style: CustomTextStyles.titleSmallGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowOffTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 105.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img580b57fcd9996e24bc43c4f4,
                  height: 40.v,
                  width: 33.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "Albion".toUpperCase(),
                    style: theme.textTheme.titleMedium,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 8.h,
              bottom: 9.v,
            ),
            child: Text(
              "Off",
              style: CustomTextStyles.titleSmallGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowArsenal(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img580b57fcd9996e24bc43c4df,
            height: 40.v,
            width: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "aRSENAL ".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 8.h,
              bottom: 9.v,
            ),
            child: Text(
              "Off",
              style: CustomTextStyles.titleSmallGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowManUnited(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img580b57fcd9996e24bc43c4e7,
            height: 40.v,
            width: 39.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "MAN UNITED ".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 8.h,
              bottom: 9.v,
            ),
            child: Text(
              "Off",
              style: CustomTextStyles.titleSmallGray700,
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

  /// Common widget
  Widget _buildRowChelsea(
    BuildContext context, {
    required String userImage,
    required String userName,
    required String onText,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              userName,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 8.h,
              bottom: 9.v,
            ),
            child: Text(
              onText,
              style: CustomTextStyles.titleSmallGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          )
        ],
      ),
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

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
