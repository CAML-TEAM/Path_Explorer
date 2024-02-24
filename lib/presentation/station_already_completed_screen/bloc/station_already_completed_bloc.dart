import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/station_already_completed_screen/models/station_already_completed_model.dart';
part 'station_already_completed_event.dart';
part 'station_already_completed_state.dart';

/// A bloc that manages the state of a StationAlreadyCompleted according to the event that is dispatched to it.
class StationAlreadyCompletedBloc
    extends Bloc<StationAlreadyCompletedEvent, StationAlreadyCompletedState> {
  StationAlreadyCompletedBloc(StationAlreadyCompletedState initialState)
      : super(initialState) {
    on<StationAlreadyCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StationAlreadyCompletedInitialEvent event,
    Emitter<StationAlreadyCompletedState> emit,
  ) async {}
}
