import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/profile1_screen/models/profile1_model.dart';
part 'profile1_event.dart';
part 'profile1_state.dart';

/// A bloc that manages the state of a Profile1 according to the event that is dispatched to it.
class Profile1Bloc extends Bloc<Profile1Event, Profile1State> {
  Profile1Bloc(Profile1State initialState) : super(initialState) {
    on<Profile1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Profile1InitialEvent event,
    Emitter<Profile1State> emit,
  ) async {
    emit(state.copyWith(
      usernameController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
