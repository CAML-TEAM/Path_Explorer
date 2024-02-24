// ignore_for_file: must_be_immutable

part of 'won_overlay_bloc.dart';

/// Represents the state of WonOverlay in the application.
class WonOverlayState extends Equatable {
  WonOverlayState({
    this.statusController,
    this.resultController,
    this.wonOverlayModelObj,
  });

  TextEditingController? statusController;

  TextEditingController? resultController;

  WonOverlayModel? wonOverlayModelObj;

  @override
  List<Object?> get props => [
        statusController,
        resultController,
        wonOverlayModelObj,
      ];

  WonOverlayState copyWith({
    TextEditingController? statusController,
    TextEditingController? resultController,
    WonOverlayModel? wonOverlayModelObj,
  }) {
    return WonOverlayState(
      statusController: statusController ?? this.statusController,
      resultController: resultController ?? this.resultController,
      wonOverlayModelObj: wonOverlayModelObj ?? this.wonOverlayModelObj,
    );
  }
}
