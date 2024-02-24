// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.email,
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  var email;

  @override
  List<Object?> get props => [
        email,
        homeModelObj,
      ];

  HomeState copyWith({
    var email,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      email: email ?? this.email,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
