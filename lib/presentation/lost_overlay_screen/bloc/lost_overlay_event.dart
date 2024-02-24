// ignore_for_file: must_be_immutable

part of 'lost_overlay_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LostOverlay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LostOverlayEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LostOverlay widget is first created.
class LostOverlayInitialEvent extends LostOverlayEvent {
  @override
  List<Object?> get props => [];
}
