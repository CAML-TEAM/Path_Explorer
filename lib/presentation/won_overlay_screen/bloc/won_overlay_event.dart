// ignore_for_file: must_be_immutable

part of 'won_overlay_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WonOverlay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WonOverlayEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WonOverlay widget is first created.
class WonOverlayInitialEvent extends WonOverlayEvent {
  @override
  List<Object?> get props => [];
}
