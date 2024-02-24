// ignore_for_file: must_be_immutable

part of 'first_nfc_tag1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FirstNfcTag1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FirstNfcTag1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FirstNfcTag1 widget is first created.
class FirstNfcTag1InitialEvent extends FirstNfcTag1Event {
  @override
  List<Object?> get props => [];
}
