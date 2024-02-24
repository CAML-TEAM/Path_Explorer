import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/core/utils/validation_functions.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_title.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_title_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_text_form_field.dart';
import 'bloc/profile1_bloc.dart';
import 'models/profile1_model.dart';

class Profile1Screen extends StatelessWidget {
  Profile1Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Profile1Bloc>(
      create: (context) => Profile1Bloc(Profile1State(
        profile1ModelObj: Profile1Model(),
      ))
        ..add(Profile1InitialEvent()),
      child: Profile1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 119.v,
                      width: 149.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 119.v,
                              width: 149.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  74.h,
                                ),
                                border: Border.all(
                                  color: appTheme.indigo900,
                                  width: 1.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 115.v,
                              width: 144.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse2115x144,
                                    height: 115.v,
                                    width: 144.h,
                                    radius: BorderRadius.circular(
                                      72.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSolarCameraMi,
                                    height: 21.v,
                                    width: 27.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(right: 8.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 51.v),
                  Text(
                    "lbl_username".tr,
                    style: CustomTextStyles.titleMediumInterPrimary,
                  ),
                  SizedBox(height: 7.v),
                  _buildUsername(context),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_email".tr,
                      style: CustomTextStyles.titleMediumInterPrimary,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildEmail(context),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_password".tr,
                      style: CustomTextStyles.titleMediumInterPrimary,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildPassword(context),
                  SizedBox(height: 64.v),
                  _buildSaveChanges(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 78.v,
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitleImage(
            imagePath: ImageConstant.imgRectangle45,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 152.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgMaterialSymbol,
                  margin: EdgeInsets.only(top: 10.v),
                ),
                AppbarTitle(
                  text: "lbl_edit_profile".tr,
                  margin: EdgeInsets.only(
                    left: 78.h,
                    bottom: 15.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsername(BuildContext context) {
    return BlocSelector<Profile1Bloc, Profile1State, TextEditingController?>(
      selector: (state) => state.usernameController,
      builder: (context, usernameController) {
        return CustomTextFormField(
          controller: usernameController,
          hintText: "lbl_manal".tr,
          hintStyle: CustomTextStyles.titleSmallInterGray80001,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 13.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<Profile1Bloc, Profile1State, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "msg_manalkabir_gmail_com".tr,
            hintStyle: CustomTextStyles.titleSmallInterGray80001,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<Profile1Bloc, Profile1State, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
            controller: passwordController,
            hintText: "lbl2".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      width: 221.h,
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.only(left: 52.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL6,
      buttonTextStyle: CustomTextStyles.titleLargeInterPrimaryContainer,
    );
  }
}
