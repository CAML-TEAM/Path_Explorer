// ignore_for_file: must_be_immutable

part of 'tutorial_bloc.dart';

/// Represents the state of Tutorial in the application.
class TutorialState extends Equatable {
  TutorialState({this.tutorialModelObj});

  TutorialModel? tutorialModelObj;

  @override
  List<Object?> get props => [
        tutorialModelObj,
      ];

  TutorialState copyWith({TutorialModel? tutorialModelObj}) {
    return TutorialState(
      tutorialModelObj: tutorialModelObj ?? this.tutorialModelObj,
    );
  }
}
