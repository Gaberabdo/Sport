import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListqatarworldcItemWidget extends StatelessWidget {
  const ListqatarworldcItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle194,
            height: 132.v,
            width: 171.h,
          ),
          SizedBox(height: 13.v),
          Text(
            "Qatar World Cup 2022",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 131.h,
            child: Text(
              "Messi goals against Switzerland",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}
