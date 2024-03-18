import 'package:vanisha_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TwentyoneItemWidget extends StatelessWidget {
  const TwentyoneItemWidget({Key? key})
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
          CustomImageView(
            imagePath: ImageConstant.imgYoungWomanDoi,
            height: 140.v,
            width: 242.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(8.h),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Babycare".toUpperCase(),
              style: CustomTextStyles.labelLargeBlueA200Bold,
            ),
          ),
          SizedBox(height: 10.v),
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
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "13 Feb, Sunday",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomOutlinedButton(
                  width: 62.h,
                  text: "Book",
                  margin: EdgeInsets.only(left: 70.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
