import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TwentyItemWidget extends StatelessWidget {
  const TwentyItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 242.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.v,
            width: 242.h,
            padding: EdgeInsets.symmetric(horizontal: 51.h),
            decoration: AppDecoration.fillLightGreen.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgG12,
              height: 140.adaptSize,
              width: 140.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Lifestyle".toUpperCase(),
              style: CustomTextStyles.labelLargeBlueA200Bold,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 199.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Text(
              "A complete guide for your new born baby",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "16 lessons",
              style: theme.textTheme.labelLarge,
            ),
          ),
          // Removed the SizedBox with height 21.v
        ],
      ),
    );
  }
}
