// ignore_for_file: must_be_immutable

part of 'welcome_screens1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeScreens1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeScreens1Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WelcomeScreens1 widget is first created.
class WelcomeScreens1InitialEvent extends WelcomeScreens1Event {
  @override
  List<Object?> get props => [];
}
