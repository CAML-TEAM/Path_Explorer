// ignore_for_file: must_be_immutable

part of 'finished_game_has_end_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FinishedGameHasEnd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FinishedGameHasEndEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FinishedGameHasEnd widget is first created.
class FinishedGameHasEndInitialEvent extends FinishedGameHasEndEvent {
  @override
  List<Object?> get props => [];
}
