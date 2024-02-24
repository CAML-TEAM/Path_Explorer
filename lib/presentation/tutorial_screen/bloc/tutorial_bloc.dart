import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/tutorial_screen/models/tutorial_model.dart';
part 'tutorial_event.dart';
part 'tutorial_state.dart';

/// A bloc that manages the state of a Tutorial according to the event that is dispatched to it.
class TutorialBloc extends Bloc<TutorialEvent, TutorialState> {
  TutorialBloc(TutorialState initialState) : super(initialState) {
    on<TutorialInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorialInitialEvent event,
    Emitter<TutorialState> emit,
  ) async {}
}
