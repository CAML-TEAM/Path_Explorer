// ignore_for_file: must_be_immutable

part of 'first_nfc_tag1_bloc.dart';

/// Represents the state of FirstNfcTag1 in the application.
class FirstNfcTag1State extends Equatable {
  FirstNfcTag1State({this.firstNfcTag1ModelObj});

  FirstNfcTag1Model? firstNfcTag1ModelObj;

  @override
  List<Object?> get props => [
        firstNfcTag1ModelObj,
      ];

  FirstNfcTag1State copyWith({FirstNfcTag1Model? firstNfcTag1ModelObj}) {
    return FirstNfcTag1State(
      firstNfcTag1ModelObj: firstNfcTag1ModelObj ?? this.firstNfcTag1ModelObj,
    );
  }
}
