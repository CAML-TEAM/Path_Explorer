// ignore_for_file: must_be_immutable

part of 'lost_overlay_bloc.dart';

/// Represents the state of LostOverlay in the application.
class LostOverlayState extends Equatable {
  LostOverlayState({this.lostOverlayModelObj});

  LostOverlayModel? lostOverlayModelObj;

  @override
  List<Object?> get props => [
        lostOverlayModelObj,
      ];

  LostOverlayState copyWith({LostOverlayModel? lostOverlayModelObj}) {
    return LostOverlayState(
      lostOverlayModelObj: lostOverlayModelObj ?? this.lostOverlayModelObj,
    );
  }
}
