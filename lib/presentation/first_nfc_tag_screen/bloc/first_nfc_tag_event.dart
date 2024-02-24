// ignore_for_file: must_be_immutable

part of 'first_nfc_tag_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FirstNfcTag widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FirstNfcTagEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FirstNfcTag widget is first created.
class FirstNfcTagInitialEvent extends FirstNfcTagEvent {
  @override
  List<Object?> get props => [];
}
