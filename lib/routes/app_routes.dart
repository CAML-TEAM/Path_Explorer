import 'package:flutter/material.dart';
import '../presentation/welcome_screens_screen/welcome_screens_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/first_nfc_tag_screen/first_nfc_tag_screen.dart';
import '../presentation/second_nfc_tag_preparing_the_game_screen/second_nfc_tag_preparing_the_game_screen.dart';
import '../presentation/quiz_question_before_answering_screen/quiz_question_before_answering_screen.dart';
import '../presentation/won_overlay_screen/won_overlay_screen.dart';
import '../presentation/quiz_question_before_answering_wrong_screen/quiz_question_before_answering_wrong_screen.dart';
import '../presentation/lost_overlay_screen/lost_overlay_screen.dart';
import '../presentation/station_already_completed_screen/station_already_completed_screen.dart';
import '../presentation/finished_game_has_end_screen/finished_game_has_end_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/tutorial_screen/tutorial_screen.dart';
import '../presentation/profile1_screen/profile1_screen.dart';
import '../presentation/quiz_question_select_screen/quiz_question_select_screen.dart';
import '../presentation/quiz_question_select_wrong_screen/quiz_question_select_wrong_screen.dart';
import '../presentation/first_nfc_tag1_screen/first_nfc_tag1_screen.dart';
import '../presentation/welcome_screens1_screen/welcome_screens1_screen.dart';
import '../presentation/quiz_question_true_screen/quiz_question_true_screen.dart';
import '../presentation/quiz_question_after_answering_wrong_one_screen/quiz_question_after_answering_wrong_one_screen.dart';
import '../presentation/welcome_screens2_screen/welcome_screens2_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreensScreen = '/welcome_screens_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String profileScreen = '/profile_screen';

  static const String homeScreen = '/home_screen';

  static const String firstNfcTagScreen = '/first_nfc_tag_screen';

  static const String secondNfcTagPreparingTheGameScreen =
      '/second_nfc_tag_preparing_the_game_screen';

  static const String quizQuestionBeforeAnsweringScreen =
      '/quiz_question_before_answering_screen';

  static const String wonOverlayScreen = '/won_overlay_screen';

  static const String quizQuestionBeforeAnsweringWrongScreen =
      '/quiz_question_before_answering_wrong_screen';

  static const String lostOverlayScreen = '/lost_overlay_screen';

  static const String stationAlreadyCompletedScreen =
      '/station_already_completed_screen';

  static const String finishedGameHasEndScreen =
      '/finished_game_has_end_screen';

  static const String settingsScreen = '/settings_screen';

  static const String tutorialScreen = '/tutorial_screen';

  static const String profile1Screen = '/profile1_screen';

  static const String quizQuestionSelectScreen = '/quiz_question_select_screen';

  static const String quizQuestionSelectWrongScreen =
      '/quiz_question_select_wrong_screen';

  static const String firstNfcTag1Screen = '/first_nfc_tag1_screen';

  static const String welcomeScreens1Screen = '/welcome_screens1_screen';

  static const String quizQuestionTrueScreen = '/quiz_question_true_screen';

  static const String quizQuestionAfterAnsweringWrongOneScreen =
      '/quiz_question_after_answering_wrong_one_screen';

  static const String welcomeScreens2Screen = '/welcome_screens2_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreensScreen: WelcomeScreensScreen.builder,
        signupScreen: SignupScreen.builder,
        loginScreen: LoginScreen.builder,
        profileScreen: ProfileScreen.builder,
        homeScreen: HomeScreen.builder,
        firstNfcTagScreen: FirstNfcTagScreen.builder,
        secondNfcTagPreparingTheGameScreen:
            SecondNfcTagPreparingTheGameScreen.builder,
        quizQuestionBeforeAnsweringScreen:
            QuizQuestionBeforeAnsweringScreen.builder,
        wonOverlayScreen: WonOverlayScreen.builder,
        quizQuestionBeforeAnsweringWrongScreen:
            QuizQuestionBeforeAnsweringWrongScreen.builder,
        lostOverlayScreen: LostOverlayScreen.builder,
        stationAlreadyCompletedScreen: StationAlreadyCompletedScreen.builder,
        finishedGameHasEndScreen: FinishedGameHasEndScreen.builder,
        settingsScreen: SettingsScreen.builder,
        tutorialScreen: TutorialScreen.builder,
        profile1Screen: Profile1Screen.builder,
        quizQuestionSelectScreen: QuizQuestionSelectScreen.builder,
        quizQuestionSelectWrongScreen: QuizQuestionSelectWrongScreen.builder,
        firstNfcTag1Screen: FirstNfcTag1Screen.builder,
        welcomeScreens1Screen: WelcomeScreens1Screen.builder,
        quizQuestionTrueScreen: QuizQuestionTrueScreen.builder,
        quizQuestionAfterAnsweringWrongOneScreen:
            QuizQuestionAfterAnsweringWrongOneScreen.builder,
        welcomeScreens2Screen: WelcomeScreens2Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreensScreen.builder
      };
}
