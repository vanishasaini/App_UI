import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/app_export.dart';
import 'package:vanisha_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:vanisha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:vanisha_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/eighteen_item_widget.dart';
import 'widgets/twenty_item_widget.dart';
import 'widgets/twentyone_item_widget.dart';
import 'widgets/nineteen_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildSix(context),
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences: "Programs for you",
                            viewAll: "View all",
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildTwenty(context),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences: "Events and experiences",
                            viewAll: "View all",
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildTwentyOne(context),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences: "Lessons for you",
                            viewAll: "View all",
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildNineteen(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leadingWidth: 37.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.only(left: 13.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgForumBlack24dp,
                margin: EdgeInsets.only(left: 14.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgOutlineStatusNotification,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 14.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Hello, Priya!",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "What do you wanna learn today?",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children:
                  List<Widget>.generate(4, (index) => EighteenItemWidget()),
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return TwentyItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return TwentyoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return NineteenItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildThirtyNine(
    BuildContext context, {
    required String eventsandexperiences,
    required String viewAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eventsandexperiences,
          style: CustomTextStyles.titleMediumLora.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 6.v,
          ),
          child: Text(
            viewAll,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeft,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 2.h),
        ),
      ],
    );
  }
}
