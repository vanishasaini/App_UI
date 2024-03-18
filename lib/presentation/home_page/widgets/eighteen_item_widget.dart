import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  const EighteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 15.v,
          right: 30.h,
          bottom: 15.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Programs",
          style: TextStyle(
            color: appTheme.blueA200,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgSolidFilesBookmark,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(right: 12.h),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blueA200.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.blueA200,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
