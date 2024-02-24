import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/welcome_screens1_screen/models/welcome_screens1_model.dart';
part 'welcome_screens1_event.dart';
part 'welcome_screens1_state.dart';

/// A bloc that manages the state of a WelcomeScreens1 according to the event that is dispatched to it.
class WelcomeScreens1Bloc
    extends Bloc<WelcomeScreens1Event, WelcomeScreens1State> {
  WelcomeScreens1Bloc(WelcomeScreens1State initialState) : super(initialState) {
    on<WelcomeScreens1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreens1InitialEvent event,
    Emitter<WelcomeScreens1State> emit,
  ) async {}
}
