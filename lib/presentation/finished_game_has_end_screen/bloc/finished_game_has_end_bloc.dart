import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/finished_game_has_end_screen/models/finished_game_has_end_model.dart';
part 'finished_game_has_end_event.dart';
part 'finished_game_has_end_state.dart';

/// A bloc that manages the state of a FinishedGameHasEnd according to the event that is dispatched to it.
class FinishedGameHasEndBloc
    extends Bloc<FinishedGameHasEndEvent, FinishedGameHasEndState> {
  FinishedGameHasEndBloc(FinishedGameHasEndState initialState)
      : super(initialState) {
    on<FinishedGameHasEndInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FinishedGameHasEndInitialEvent event,
    Emitter<FinishedGameHasEndState> emit,
  ) async {}
}
