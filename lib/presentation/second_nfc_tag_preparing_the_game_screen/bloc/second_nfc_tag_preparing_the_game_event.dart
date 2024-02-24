// ignore_for_file: must_be_immutable

part of 'second_nfc_tag_preparing_the_game_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SecondNfcTagPreparingTheGame widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SecondNfcTagPreparingTheGameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SecondNfcTagPreparingTheGame widget is first created.
class SecondNfcTagPreparingTheGameInitialEvent
    extends SecondNfcTagPreparingTheGameEvent {
  @override
  List<Object?> get props => [];
}
