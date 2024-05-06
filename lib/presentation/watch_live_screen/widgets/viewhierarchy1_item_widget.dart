import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class Viewhierarchy1ItemWidget extends StatelessWidget {
  const Viewhierarchy1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 142.v,
          width: 171.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle192,
                height: 132.v,
                width: 171.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle6,
                      height: 20.v,
                      width: 8.h,
                    ),
                    _buildButton1(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle7,
                      height: 20.v,
                      width: 8.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15.v),
        Text(
          "Qatar World Cup 2022",
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 2.v),
        SizedBox(
          width: 146.h,
          child: Text(
            "Best of Portugal goals against Switzerland",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
      width: 50.h,
      text: "04:22",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCarbonPlayFilledAlt,
          height: 12.adaptSize,
          width: 12.adaptSize,
        ),
      ),
    );
  }
}
