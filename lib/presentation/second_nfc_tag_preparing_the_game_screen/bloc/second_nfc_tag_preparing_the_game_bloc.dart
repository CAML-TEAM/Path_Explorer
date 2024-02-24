import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/second_nfc_tag_preparing_the_game_screen/models/second_nfc_tag_preparing_the_game_model.dart';
part 'second_nfc_tag_preparing_the_game_event.dart';
part 'second_nfc_tag_preparing_the_game_state.dart';

/// A bloc that manages the state of a SecondNfcTagPreparingTheGame according to the event that is dispatched to it.
class SecondNfcTagPreparingTheGameBloc extends Bloc<
    SecondNfcTagPreparingTheGameEvent, SecondNfcTagPreparingTheGameState> {
  SecondNfcTagPreparingTheGameBloc(
      SecondNfcTagPreparingTheGameState initialState)
      : super(initialState) {
    on<SecondNfcTagPreparingTheGameInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SecondNfcTagPreparingTheGameInitialEvent event,
    Emitter<SecondNfcTagPreparingTheGameState> emit,
  ) async {}
}
