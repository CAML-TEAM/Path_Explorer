import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/core/utils/validation_functions.dart';
import 'package:pathexplorers/widgets/custom_checkbox_button.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_text_form_field.dart';
import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
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
                      SizedBox(height: 53.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 255.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 27.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_create_an_account".tr,
                                            style:
                                                theme.textTheme.headlineSmall),
                                        Text("msg_join_our_scavenger".tr,
                                            style: CustomTextStyles
                                                .titleSmallGray50001),
                                        SizedBox(height: 48.v),
                                        _buildCreateAccountSection(context),
                                        SizedBox(height: 4.v),
                                        _buildEmailSection(context),
                                        SizedBox(height: 19.v),
                                        _buildPasswordSection(context),
                                        SizedBox(height: 18.v),
                                        _buildRememberMeSection(context),
                                        SizedBox(height: 44.v),
                                        _buildSignUpSection(context),
                                        SizedBox(height: 28.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 67.h),
                                            child: Row(children: [
                                              Text("msg_already_have_an".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallGray50001),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtLogin(context);
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h),
                                                      child: Text(
                                                          "lbl_login".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallPink800)))
                                            ]))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildCreateAccountSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_full_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 6.v),
      BlocSelector<SignupBloc, SignupState, TextEditingController?>(
          selector: (state) => state.fullNameController,
          builder: (context, fullNameController) {
            return CustomTextFormField(
                controller: fullNameController,
                hintText: "msg_enter_your_full".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 6.v),
      BlocSelector<SignupBloc, SignupState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "msg_enter_your_email".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 5.v),
      BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            hintText: "msg_please_enter_your".tr,
            hintStyle: CustomTextStyles.titleSmallGray9006d,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  context.read<SignupBloc>().add(ChangePasswordVisibilityEvent(
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
    ]);
  }

  /// Section Widget
  Widget _buildRememberMeSection(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, bool?>(
        selector: (state) => state.rememberMeSection,
        builder: (context, rememberMeSection) {
          return CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: rememberMeSection,
              onChange: (value) {
                context
                    .read<SignupBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildSignUpSection(BuildContext context) {
    return SizedBox(
        height: 88.v,
        width: 356.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                        height: 45.v,
                        text: "lbl_sign_up".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumManropePrimaryContainer,
                        onPressed: () {
                          welme(context);
                        }),
                    SizedBox(height: 32.v),
                    SizedBox(width: 133.h, child: Divider()),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(width: 133.h, child: Divider()))
                  ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("lbl_or".tr,
                  style: CustomTextStyles.titleSmallGray50001))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  welme(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
