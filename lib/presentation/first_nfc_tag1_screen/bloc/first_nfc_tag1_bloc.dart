import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/first_nfc_tag1_screen/models/first_nfc_tag1_model.dart';
part 'first_nfc_tag1_event.dart';
part 'first_nfc_tag1_state.dart';

/// A bloc that manages the state of a FirstNfcTag1 according to the event that is dispatched to it.
class FirstNfcTag1Bloc extends Bloc<FirstNfcTag1Event, FirstNfcTag1State> {
  FirstNfcTag1Bloc(FirstNfcTag1State initialState) : super(initialState) {
    on<FirstNfcTag1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    FirstNfcTag1InitialEvent event,
    Emitter<FirstNfcTag1State> emit,
  ) async {}
}
