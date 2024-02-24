// ignore_for_file: must_be_immutable

part of 'welcome_screens_bloc.dart';

/// Represents the state of WelcomeScreens in the application.
class WelcomeScreensState extends Equatable {
  WelcomeScreensState({this.welcomeScreensModelObj});

  WelcomeScreensModel? welcomeScreensModelObj;

  @override
  List<Object?> get props => [
        welcomeScreensModelObj,
      ];

  WelcomeScreensState copyWith({WelcomeScreensModel? welcomeScreensModelObj}) {
    return WelcomeScreensState(
      welcomeScreensModelObj:
          welcomeScreensModelObj ?? this.welcomeScreensModelObj,
    );
  }
}
