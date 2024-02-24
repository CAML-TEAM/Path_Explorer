// ignore_for_file: must_be_immutable

part of 'profile1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Profile1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Profile1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Profile1 widget is first created.
class Profile1InitialEvent extends Profile1Event {
  @override
  List<Object?> get props => [];
}
