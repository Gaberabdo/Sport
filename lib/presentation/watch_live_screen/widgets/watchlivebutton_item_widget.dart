import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class WatchlivebuttonItemWidget extends StatelessWidget {
  const WatchlivebuttonItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 357.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrame1208x357,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWatchLiveButton(context),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle7,
                height: 22.v,
                width: 8.h,
                margin: EdgeInsets.only(bottom: 158.v),
              )
            ],
          ),
        ),
        SizedBox(height: 10.v),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            "keep an eye on the stadium",
            style: theme.textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 6.v),
        Container(
          width: 316.h,
          margin: EdgeInsets.only(
            left: 4.h,
            right: 36.h,
          ),
          child: Text(
            "Watch sports live or highlights, read every news from your smartphone",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBlack90001,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildWatchLiveButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 93.h,
      text: "Watch live now",
      margin: EdgeInsets.only(bottom: 158.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrame43848,
          height: 12.adaptSize,
          width: 12.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodySmallBebasNeueWhiteA700,
    );
  }
}
