import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/first_nfc_tag_screen/models/first_nfc_tag_model.dart';
part 'first_nfc_tag_event.dart';
part 'first_nfc_tag_state.dart';

/// A bloc that manages the state of a FirstNfcTag according to the event that is dispatched to it.
class FirstNfcTagBloc extends Bloc<FirstNfcTagEvent, FirstNfcTagState> {
  FirstNfcTagBloc(FirstNfcTagState initialState) : super(initialState) {
    on<FirstNfcTagInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FirstNfcTagInitialEvent event,
    Emitter<FirstNfcTagState> emit,
  ) async {}
}
