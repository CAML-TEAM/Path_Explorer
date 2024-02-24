import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/welcome_screens_screen/models/welcome_screens_model.dart';
part 'welcome_screens_event.dart';
part 'welcome_screens_state.dart';

/// A bloc that manages the state of a WelcomeScreens according to the event that is dispatched to it.
class WelcomeScreensBloc
    extends Bloc<WelcomeScreensEvent, WelcomeScreensState> {
  WelcomeScreensBloc(WelcomeScreensState initialState) : super(initialState) {
    on<WelcomeScreensInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreensInitialEvent event,
    Emitter<WelcomeScreensState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.welcomeScreens1Screen,
      );
    });
  }
}
