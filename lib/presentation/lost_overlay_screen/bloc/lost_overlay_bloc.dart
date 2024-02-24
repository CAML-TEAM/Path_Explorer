import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/lost_overlay_screen/models/lost_overlay_model.dart';
part 'lost_overlay_event.dart';
part 'lost_overlay_state.dart';

/// A bloc that manages the state of a LostOverlay according to the event that is dispatched to it.
class LostOverlayBloc extends Bloc<LostOverlayEvent, LostOverlayState> {
  LostOverlayBloc(LostOverlayState initialState) : super(initialState) {
    on<LostOverlayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LostOverlayInitialEvent event,
    Emitter<LostOverlayState> emit,
  ) async {}
}
