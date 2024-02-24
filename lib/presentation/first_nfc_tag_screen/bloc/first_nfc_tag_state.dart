// ignore_for_file: must_be_immutable

part of 'first_nfc_tag_bloc.dart';

/// Represents the state of FirstNfcTag in the application.
class FirstNfcTagState extends Equatable {
  FirstNfcTagState({this.firstNfcTagModelObj});

  FirstNfcTagModel? firstNfcTagModelObj;

  @override
  List<Object?> get props => [
        firstNfcTagModelObj,
      ];

  FirstNfcTagState copyWith({FirstNfcTagModel? firstNfcTagModelObj}) {
    return FirstNfcTagState(
      firstNfcTagModelObj: firstNfcTagModelObj ?? this.firstNfcTagModelObj,
    );
  }
}
