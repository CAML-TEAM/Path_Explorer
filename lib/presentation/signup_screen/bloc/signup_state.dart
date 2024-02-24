// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberMeSection = false,
    this.signupModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignupModel? signupModelObj;

  bool isShowPassword;

  bool rememberMeSection;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        isShowPassword,
        rememberMeSection,
        signupModelObj,
      ];

  SignupState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberMeSection,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMeSection: rememberMeSection ?? this.rememberMeSection,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
