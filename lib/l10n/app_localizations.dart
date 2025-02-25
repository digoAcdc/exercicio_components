import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @appName.
  ///
  /// In pt, this message translates to:
  /// **'Exercício'**
  String get appName;

  /// No description provided for @firstNameLabel.
  ///
  /// In pt, this message translates to:
  /// **'Primeiro nome:'**
  String get firstNameLabel;

  /// No description provided for @lastNameLabel.
  ///
  /// In pt, this message translates to:
  /// **'Ultimo nome:'**
  String get lastNameLabel;

  /// No description provided for @submitButton.
  ///
  /// In pt, this message translates to:
  /// **'Enviar'**
  String get submitButton;

  /// No description provided for @genderRequired.
  ///
  /// In pt, this message translates to:
  /// **'Selecione o genero'**
  String get genderRequired;

  /// No description provided for @employeeIdLabel.
  ///
  /// In pt, this message translates to:
  /// **'Funcionário ID:'**
  String get employeeIdLabel;

  /// No description provided for @desgnationLabel.
  ///
  /// In pt, this message translates to:
  /// **'Designaçaã:'**
  String get desgnationLabel;

  /// No description provided for @phoneNumberLabel.
  ///
  /// In pt, this message translates to:
  /// **'Numero de Telefone:'**
  String get phoneNumberLabel;

  /// No description provided for @employeeDetailLabel.
  ///
  /// In pt, this message translates to:
  /// **'Detalhe Funcionário'**
  String get employeeDetailLabel;

  /// No description provided for @mandatoryField.
  ///
  /// In pt, this message translates to:
  /// **'Campo Obrigatório'**
  String get mandatoryField;

  /// No description provided for @byTapping.
  ///
  /// In pt, this message translates to:
  /// **'Ao tocar em Criar conta ou Entrar, você concorda com nossos Termos.\nSaiba como processamos seus dados em nossa Política de Privacidade e Política de Cookies.'**
  String get byTapping;

  /// No description provided for @signApple.
  ///
  /// In pt, this message translates to:
  /// **'Faça login com a Apple'**
  String get signApple;

  /// No description provided for @signFace.
  ///
  /// In pt, this message translates to:
  /// **'Faça login com o Facebook'**
  String get signFace;

  /// No description provided for @signPhone.
  ///
  /// In pt, this message translates to:
  /// **'Faça login com número de telefone'**
  String get signPhone;

  /// No description provided for @trouble.
  ///
  /// In pt, this message translates to:
  /// **'Problemas para fazer login?'**
  String get trouble;

  /// No description provided for @getYourMoney.
  ///
  /// In pt, this message translates to:
  /// **'Tenha seu dinheiro sob controle'**
  String get getYourMoney;

  /// No description provided for @manager.
  ///
  /// In pt, this message translates to:
  /// **'Gerencie suas despesas.\nPerfeitamente.'**
  String get manager;

  /// No description provided for @signUpWithEmail.
  ///
  /// In pt, this message translates to:
  /// **'Inscreva-se com ID de e-mail'**
  String get signUpWithEmail;

  /// No description provided for @signnUpWithGoogle.
  ///
  /// In pt, this message translates to:
  /// **'Inscreva-se no Google'**
  String get signnUpWithGoogle;

  /// No description provided for @alreadyAccount.
  ///
  /// In pt, this message translates to:
  /// **'Já tem uma conta? Entrar'**
  String get alreadyAccount;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pt': return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
