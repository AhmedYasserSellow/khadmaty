// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `عربى`
  String get other_lang {
    return Intl.message(
      'عربى',
      name: 'other_lang',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Email`
  String get auth_email {
    return Intl.message(
      'Continue with Email',
      name: 'auth_email',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get auth_apple {
    return Intl.message(
      'Continue with Apple',
      name: 'auth_apple',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get auth_google {
    return Intl.message(
      'Continue with Google',
      name: 'auth_google',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get auth_facebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'auth_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get no_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get sign_in_header {
    return Intl.message(
      'Welcome Back!',
      name: 'sign_in_header',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to with your account to continue`
  String get sign_in_sub_header {
    return Intl.message(
      'Sign in to with your account to continue',
      name: 'sign_in_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Passwrod`
  String get password {
    return Intl.message(
      'Passwrod',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get your_name {
    return Intl.message(
      'Your Name',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password ?`
  String get forgot_password {
    return Intl.message(
      'Forgot password ?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account ?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get sign_up_header {
    return Intl.message(
      'Create an account',
      name: 'sign_up_header',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account to continue`
  String get sign_up_sub_header {
    return Intl.message(
      'Create a new account to continue',
      name: 'sign_up_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `Role Selector`
  String get role_selector {
    return Intl.message(
      'Role Selector',
      name: 'role_selector',
      desc: '',
      args: [],
    );
  }

  /// `Choose your role`
  String get role_selector_header {
    return Intl.message(
      'Choose your role',
      name: 'role_selector_header',
      desc: '',
      args: [],
    );
  }

  /// `Which type of user are you ?`
  String get role_selector_sub_header {
    return Intl.message(
      'Which type of user are you ?',
      name: 'role_selector_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `Provider`
  String get provider_header {
    return Intl.message(
      'Provider',
      name: 'provider_header',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get provider_sub_header {
    return Intl.message(
      '',
      name: 'provider_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user_header {
    return Intl.message(
      'User',
      name: 'user_header',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get user_sub_header {
    return Intl.message(
      '',
      name: 'user_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ {
    return Intl.message(
      'Continue',
      name: 'continue_',
      desc: '',
      args: [],
    );
  }

  /// `Job Selector`
  String get job_selector {
    return Intl.message(
      'Job Selector',
      name: 'job_selector',
      desc: '',
      args: [],
    );
  }

  /// `Choose your job`
  String get job_selector_header {
    return Intl.message(
      'Choose your job',
      name: 'job_selector_header',
      desc: '',
      args: [],
    );
  }

  /// `What job can you offer ?`
  String get job_selector_sub_header {
    return Intl.message(
      'What job can you offer ?',
      name: 'job_selector_sub_header',
      desc: '',
      args: [],
    );
  }

  /// `Plumber`
  String get plumber {
    return Intl.message(
      'Plumber',
      name: 'plumber',
      desc: '',
      args: [],
    );
  }

  /// `Carpenter`
  String get carpenter {
    return Intl.message(
      'Carpenter',
      name: 'carpenter',
      desc: '',
      args: [],
    );
  }

  /// `Painter`
  String get painter {
    return Intl.message(
      'Painter',
      name: 'painter',
      desc: '',
      args: [],
    );
  }

  /// `Electrician`
  String get electrician {
    return Intl.message(
      'Electrician',
      name: 'electrician',
      desc: '',
      args: [],
    );
  }

  /// `Iron Man`
  String get iron_man {
    return Intl.message(
      'Iron Man',
      name: 'iron_man',
      desc: '',
      args: [],
    );
  }

  /// `Blacksmith`
  String get blacksmith {
    return Intl.message(
      'Blacksmith',
      name: 'blacksmith',
      desc: '',
      args: [],
    );
  }

  /// `Tailor`
  String get tailor {
    return Intl.message(
      'Tailor',
      name: 'tailor',
      desc: '',
      args: [],
    );
  }

  /// `House Cleaner`
  String get house_cleaner {
    return Intl.message(
      'House Cleaner',
      name: 'house_cleaner',
      desc: '',
      args: [],
    );
  }

  /// `Khadmaty`
  String get title {
    return Intl.message(
      'Khadmaty',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Payment service is coming soon`
  String get payment_service {
    return Intl.message(
      'Payment service is coming soon',
      name: 'payment_service',
      desc: '',
      args: [],
    );
  }

  /// `Available Services`
  String get available_services {
    return Intl.message(
      'Available Services',
      name: 'available_services',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `sign-out`
  String get sign_out {
    return Intl.message(
      'sign-out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `© 2023 Khadmaty All rights reserved.`
  String get copy_right {
    return Intl.message(
      '© 2023 Khadmaty All rights reserved.',
      name: 'copy_right',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
