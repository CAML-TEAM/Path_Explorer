import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/welcome_screens2_screen/models/welcome_screens2_model.dart';
part 'welcome_screens2_event.dart';
part 'welcome_screens2_state.dart';

/// A bloc that manages the state of a WelcomeScreens2 according to the event that is dispatched to it.
class WelcomeScreens2Bloc
    extends Bloc<WelcomeScreens2Event, WelcomeScreens2State> {
  WelcomeScreens2Bloc(WelcomeScreens2State initialState) : super(initialState) {
    on<WelcomeScreens2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreens2InitialEvent event,
    Emitter<WelcomeScreens2State> emit,
  ) async {}
}
