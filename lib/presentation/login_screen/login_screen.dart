import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/core/utils/validation_functions.dart';
import 'package:pathexplorers/widgets/custom_checkbox_button.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 414.h,
                    child: Column(children: [
                      SizedBox(height: 67.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: _buildLoginScreen(context)))
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 6.v),
          BlocSelector<LoginBloc, LoginState, TextEditingController?>(
              selector: (state) => state.emailController,
              builder: (context, emailController) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_enter_your_email".tr,
                    hintStyle: CustomTextStyles.titleSmallGray9006d,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 5.v),
          BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            return CustomTextFormField(
                controller: state.passwordController,
                hintText: "msg_please_enter_your".tr,
                hintStyle: CustomTextStyles.titleSmallGray9006d,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                    onTap: () {
                      context.read<LoginBloc>().add(
                          ChangePasswordVisibilityEvent(
                              value: !state.isShowPassword));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 17.h, 11.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgEyefill,
                            height: 18.adaptSize,
                            width: 18.adaptSize))),
                suffixConstraints: BoxConstraints(maxHeight: 41.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: state.isShowPassword,
                contentPadding:
                    EdgeInsets.only(left: 13.h, top: 10.v, bottom: 10.v));
          })
        ]));
  }

  /// Section Widget
  Widget _buildLoginScreen(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 355.v),
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("msg_hi_wecome_back".tr,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 55.v),
          _buildLoginForm(context),
          SizedBox(height: 12.v),
          _buildPasswordForm(context),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.centerLeft,
              child: BlocSelector<LoginBloc, LoginState, bool?>(
                  selector: (state) => state.rememberMe,
                  builder: (context, rememberMe) {
                    return CustomCheckboxButton(
                        alignment: Alignment.centerLeft,
                        text: "lbl_remember_me".tr,
                        value: rememberMe,
                        onChange: (value) {
                          context
                              .read<LoginBloc>()
                              .add(ChangeCheckBoxEvent(value: value));
                        });
                  })),
          SizedBox(height: 17.v),
          CustomElevatedButton(
              height: 45.v,
              text: "lbl_login".tr,
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle:
                  CustomTextStyles.titleMediumManropePrimaryContainer,
              onPressed: () {
                navigateToHome(context);
              }),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
                        child: SizedBox(width: 135.h, child: Divider())),
                    Text("lbl_or2".tr,
                        style: CustomTextStyles.titleSmallGray50001),
                    Padding(
                        padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
                        child: SizedBox(width: 135.h, child: Divider()))
                  ])),
          SizedBox(height: 35.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text("msg_don_t_have_an_account".tr,
                    style: CustomTextStyles.titleSmallGray50001)),
            GestureDetector(
                onTap: () {
                  onTapTxtSignUp(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text("lbl_sign_up".tr,
                        style: CustomTextStyles.titleSmallPink800)))
          ])
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  navigateToHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
