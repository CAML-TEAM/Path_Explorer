// ignore_for_file: must_be_immutable

part of 'welcome_screens1_bloc.dart';

/// Represents the state of WelcomeScreens1 in the application.
class WelcomeScreens1State extends Equatable {
  WelcomeScreens1State({this.welcomeScreens1ModelObj});

  WelcomeScreens1Model? welcomeScreens1ModelObj;

  @override
  List<Object?> get props => [
        welcomeScreens1ModelObj,
      ];

  WelcomeScreens1State copyWith(
      {WelcomeScreens1Model? welcomeScreens1ModelObj}) {
    return WelcomeScreens1State(
      welcomeScreens1ModelObj:
          welcomeScreens1ModelObj ?? this.welcomeScreens1ModelObj,
    );
  }
}
