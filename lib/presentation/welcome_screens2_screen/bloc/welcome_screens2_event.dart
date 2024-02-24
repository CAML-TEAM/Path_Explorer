// ignore_for_file: must_be_immutable

part of 'welcome_screens2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeScreens2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeScreens2Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WelcomeScreens2 widget is first created.
class WelcomeScreens2InitialEvent extends WelcomeScreens2Event {
  @override
  List<Object?> get props => [];
}
