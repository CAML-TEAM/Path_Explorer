// ignore_for_file: must_be_immutable

part of 'station_already_completed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StationAlreadyCompleted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StationAlreadyCompletedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the StationAlreadyCompleted widget is first created.
class StationAlreadyCompletedInitialEvent extends StationAlreadyCompletedEvent {
  @override
  List<Object?> get props => [];
}
