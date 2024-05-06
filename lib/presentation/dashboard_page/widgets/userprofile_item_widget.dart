import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        children: [
          SizedBox(
            height: 96.v,
            width: 160.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle18,
                  height: 96.v,
                  width: 160.h,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCarbonPlayFilledAlt,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlack,
                  child: Text(
                    "Highlights",
                    style: CustomTextStyles.labelMediumBlack90001,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "Portugal v Switzerland",
                  style: CustomTextStyles.titleMediumBebasNeueBlack90001,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 136.h,
                  child: Text(
                    "Watch the highlights from the match between...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
