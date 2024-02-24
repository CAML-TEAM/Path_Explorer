// ignore_for_file: must_be_immutable

part of 'finished_game_has_end_bloc.dart';

/// Represents the state of FinishedGameHasEnd in the application.
class FinishedGameHasEndState extends Equatable {
  FinishedGameHasEndState({this.finishedGameHasEndModelObj});

  FinishedGameHasEndModel? finishedGameHasEndModelObj;

  @override
  List<Object?> get props => [
        finishedGameHasEndModelObj,
      ];

  FinishedGameHasEndState copyWith(
      {FinishedGameHasEndModel? finishedGameHasEndModelObj}) {
    return FinishedGameHasEndState(
      finishedGameHasEndModelObj:
          finishedGameHasEndModelObj ?? this.finishedGameHasEndModelObj,
    );
  }
}
