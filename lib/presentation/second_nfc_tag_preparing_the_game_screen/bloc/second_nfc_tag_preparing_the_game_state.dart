// ignore_for_file: must_be_immutable

part of 'second_nfc_tag_preparing_the_game_bloc.dart';

/// Represents the state of SecondNfcTagPreparingTheGame in the application.
class SecondNfcTagPreparingTheGameState extends Equatable {
  SecondNfcTagPreparingTheGameState(
      {this.secondNfcTagPreparingTheGameModelObj});

  SecondNfcTagPreparingTheGameModel? secondNfcTagPreparingTheGameModelObj;

  @override
  List<Object?> get props => [
        secondNfcTagPreparingTheGameModelObj,
      ];

  SecondNfcTagPreparingTheGameState copyWith(
      {SecondNfcTagPreparingTheGameModel?
          secondNfcTagPreparingTheGameModelObj}) {
    return SecondNfcTagPreparingTheGameState(
      secondNfcTagPreparingTheGameModelObj:
          secondNfcTagPreparingTheGameModelObj ??
              this.secondNfcTagPreparingTheGameModelObj,
    );
  }
}
