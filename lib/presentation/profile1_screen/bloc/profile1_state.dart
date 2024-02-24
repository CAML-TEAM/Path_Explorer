// ignore_for_file: must_be_immutable

part of 'profile1_bloc.dart';

/// Represents the state of Profile1 in the application.
class Profile1State extends Equatable {
  Profile1State({
    this.usernameController,
    this.emailController,
    this.passwordController,
    this.profile1ModelObj,
  });

  TextEditingController? usernameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  Profile1Model? profile1ModelObj;

  @override
  List<Object?> get props => [
        usernameController,
        emailController,
        passwordController,
        profile1ModelObj,
      ];

  Profile1State copyWith({
    TextEditingController? usernameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    Profile1Model? profile1ModelObj,
  }) {
    return Profile1State(
      usernameController: usernameController ?? this.usernameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      profile1ModelObj: profile1ModelObj ?? this.profile1ModelObj,
    );
  }
}
