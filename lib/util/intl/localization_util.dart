import 'package:exercicio_componentes_flutter/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class LocalizationUtil {
  static LocalizationUtil of(BuildContext context) {
    return LocalizationUtil._(AppLocalizations.of(context));
  }

  final AppLocalizations _localizations;

  LocalizationUtil._(this._localizations);

  // Métodos de acesso às traduções
  String get appName => _localizations.appName;
  String get firstNameLabel => _localizations.firstNameLabel;
  String get lastNameLabel => _localizations.lastNameLabel;
  String get submitButton => _localizations.submitButton;
  String get genderRequired => _localizations.genderRequired;
  String get employeeIdLabel => _localizations.employeeIdLabel;
  String get desgnationLabel => _localizations.desgnationLabel;
  String get phoneNumberLabel => _localizations.phoneNumberLabel;
  String get mandatoryField => _localizations.mandatoryField;
  String get employeeDetailLabel => _localizations.employeeDetailLabel;
  String get byTapping => _localizations.byTapping;
  String get signApple => _localizations.signApple;
  String get signFace => _localizations.signFace;
  String get signPhone => _localizations.signPhone;
  String get trouble => _localizations.trouble;
  String get getYourMoney => _localizations.getYourMoney;
  String get manager => _localizations.manager;
  String get signUpWithEmail => _localizations.signUpWithEmail;
  String get signnUpWithGoogle => _localizations.signnUpWithGoogle;
  String get alreadyAccount => _localizations.alreadyAccount;
}
