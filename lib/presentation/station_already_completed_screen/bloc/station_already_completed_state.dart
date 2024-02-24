// ignore_for_file: must_be_immutable

part of 'station_already_completed_bloc.dart';

/// Represents the state of StationAlreadyCompleted in the application.
class StationAlreadyCompletedState extends Equatable {
  StationAlreadyCompletedState({this.stationAlreadyCompletedModelObj});

  StationAlreadyCompletedModel? stationAlreadyCompletedModelObj;

  @override
  List<Object?> get props => [
        stationAlreadyCompletedModelObj,
      ];

  StationAlreadyCompletedState copyWith(
      {StationAlreadyCompletedModel? stationAlreadyCompletedModelObj}) {
    return StationAlreadyCompletedState(
      stationAlreadyCompletedModelObj: stationAlreadyCompletedModelObj ??
          this.stationAlreadyCompletedModelObj,
    );
  }
}
