// ignore_for_file: must_be_immutable

part of 'welcome_screens_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeScreens widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeScreensEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WelcomeScreens widget is first created.
class WelcomeScreensInitialEvent extends WelcomeScreensEvent {
  @override
  List<Object?> get props => [];
}
