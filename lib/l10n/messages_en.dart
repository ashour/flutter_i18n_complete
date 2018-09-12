// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en';

  static m0(howMany) => "${Intl.plural(howMany, zero: 'No contacts', one: '${howMany} contact', two: '${howMany} contacts', few: '${howMany} contacts', many: '${howMany} contacts', other: '${howMany} contacts')}";

  static m1(date) => "Contact next at ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "contactCount" : m0,
    "contactNextAt" : MessageLookupByLibrary.simpleMessage("Contact next at"),
    "contactNextAtDate" : m1,
    "name" : MessageLookupByLibrary.simpleMessage("Name"),
    "save" : MessageLookupByLibrary.simpleMessage("Save"),
    "title" : MessageLookupByLibrary.simpleMessage("Stay in Touch (i18n Demo)")
  };
}
