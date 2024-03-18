import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class NineteenItemWidget extends StatelessWidget {
  const NineteenItemWidget({Key? key}) : super(key: key);

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
          CustomImageView(
            imagePath: ImageConstant.imgYoungWomanDoi,
            height: 140.v,
            width: 242.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(8.h),
            ),
          ),
          SizedBox(height: 16.v), // Adjust spacing if needed
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Babycare".toUpperCase(),
              style: CustomTextStyles.labelLargeBlueA200Bold,
            ),
          ),
          SizedBox(height: 10.v), // Adjust spacing if needed
          Container(
            width: 190.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Text(
              "Understanding of human behaviour",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 12.v), // Adjust spacing if needed
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v), // Reduce padding
                  child: Text(
                    "3 min",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 166.h), // Remove top margin
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
