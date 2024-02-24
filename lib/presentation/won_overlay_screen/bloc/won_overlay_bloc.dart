import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/won_overlay_screen/models/won_overlay_model.dart';
part 'won_overlay_event.dart';
part 'won_overlay_state.dart';

/// A bloc that manages the state of a WonOverlay according to the event that is dispatched to it.
class WonOverlayBloc extends Bloc<WonOverlayEvent, WonOverlayState> {
  WonOverlayBloc(WonOverlayState initialState) : super(initialState) {
    on<WonOverlayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WonOverlayInitialEvent event,
    Emitter<WonOverlayState> emit,
  ) async {
    emit(state.copyWith(
        statusController: TextEditingController(),
        resultController: TextEditingController()));
  }
}
