import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class QatarworldcupItemWidget extends StatelessWidget {
  const QatarworldcupItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle19124x179,
          height: 124.v,
          width: 179.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillRedA,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Qatar World Cup 2022",
                style: CustomTextStyles.labelLargeGray50,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 131.h,
                child: Text(
                  "Messi goals against Switzerland",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallGray50,
                ),
              ),
              SizedBox(height: 11.v),
              CustomElevatedButton(
                height: 22.v,
                width: 107.h,
                text: "Read More",
                buttonStyle: CustomButtonStyles.none,
              )
            ],
          ),
        )
      ],
    );
  }
}
