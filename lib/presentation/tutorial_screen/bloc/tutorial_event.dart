// ignore_for_file: must_be_immutable

part of 'tutorial_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tutorial widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorialEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Tutorial widget is first created.
class TutorialInitialEvent extends TutorialEvent {
  @override
  List<Object?> get props => [];
}
