// ignore_for_file: must_be_immutable

part of 'welcome_screens2_bloc.dart';

/// Represents the state of WelcomeScreens2 in the application.
class WelcomeScreens2State extends Equatable {
  WelcomeScreens2State({this.welcomeScreens2ModelObj});

  WelcomeScreens2Model? welcomeScreens2ModelObj;

  @override
  List<Object?> get props => [
        welcomeScreens2ModelObj,
      ];

  WelcomeScreens2State copyWith(
      {WelcomeScreens2Model? welcomeScreens2ModelObj}) {
    return WelcomeScreens2State(
      welcomeScreens2ModelObj:
          welcomeScreens2ModelObj ?? this.welcomeScreens2ModelObj,
    );
  }
}
