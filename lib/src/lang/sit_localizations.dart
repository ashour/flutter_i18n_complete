import 'dart:async';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../../l10n/messages_all.dart';

class SitLocalizations {
  /// Initialize localization systems and messages
  static Future<SitLocalizations> load(Locale locale) async {
    // We check to see if the given local has a country code e.g.
    // "en_US". If it does, we use it as-is. Otherwise, we just
    // use the language portion e.g. "en".
    final String localeName =
        locale.countryCode == null || locale.countryCode.isEmpty
            ? locale.languageCode
            : locale.toString();

    // We make sure the locale name is in the right format e.g.
    // converting "en-US" to "en_US".
    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    // Load localized messages for the current locale.
    await initializeMessages(canonicalLocaleName);

    // Force the locale in Intl.
    Intl.defaultLocale = canonicalLocaleName;

    // Date formatting is loaded on an as-needed basis. Since
    // we need it for our app, we load it here.
    await initializeDateFormatting();

    return SitLocalizations();
  }

  /// Retrieve localization resources for the widget tree
  /// corresponding to the given `context`
  static SitLocalizations of(BuildContext context) =>
      Localizations.of<SitLocalizations>(context, SitLocalizations);

  // Localized Messages
  String get title => Intl.message(
        'Stay in Touch (i18n Demo)',
        name: 'title',
        desc: 'App title',
      );

  String get save => Intl.message(
        'Save',
        name: 'save',
        desc: 'Save buttons',
      );

  String get name => Intl.message(
        'Name',
        name: 'name',
        desc: 'Name labels',
      );

  String get addContactScreen_title => Intl.message(
        'Add Contact',
        name: 'addContactScreen_title',
        desc: 'Title for add contact screen',
      );

  String get contactNextAt => Intl.message(
        'Contact next at',
        name: 'contactNextAt',
        desc: 'Label for Contact next date field',
      );

  String contactNextAtDate(String date) => Intl.message(
        'Contact next at $date',
        name: 'contactNextAtDate',
        args: [date],
        desc: 'Indicator for when to make next contact with person',
      );

  String contactCount(int howMany) => Intl.plural(
        howMany,
        zero: 'No contacts',
        one: '$howMany contact',
        two: '$howMany contacts',
        few: '$howMany contacts',
        many: '$howMany contacts',
        other: '$howMany contacts',
        args: [howMany],
        name: 'contactCount',
        desc: 'Contact counter',
      );
}
