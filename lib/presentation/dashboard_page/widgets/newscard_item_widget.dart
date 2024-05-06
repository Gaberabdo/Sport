import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class NewscardItemWidget extends StatelessWidget {
  const NewscardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.v,
      width: 358.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame43866,
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
                right: 52.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 68.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Text(
                      "🔥 Top news",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Phoenix Suns vs Boston Celtics",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      Text(
                        "Basketball",
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
                        padding: EdgeInsets.only(left: 4.h),
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
                        padding: EdgeInsets.only(left: 4.h),
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
}
