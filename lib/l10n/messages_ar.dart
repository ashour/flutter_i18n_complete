// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  get localeName => 'ar';

  static m0(howMany) => "${Intl.plural(howMany, zero: 'لا توجد أطراف', one: 'طرف ${howMany}', two: 'طرفان', few: '${howMany} أطراف', many: '${howMany} طرف', other: '${howMany} طرف')}";

  static m1(date) => "الإتصال القادم على يوم ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "addContactScreen_title" : MessageLookupByLibrary.simpleMessage("إضافة جهة اتصال"),
    "contactCount" : m0,
    "contactNextAt" : MessageLookupByLibrary.simpleMessage("تاريخ الإتصال القادم"),
    "contactNextAtDate" : m1,
    "name" : MessageLookupByLibrary.simpleMessage("الإسم"),
    "save" : MessageLookupByLibrary.simpleMessage("حفظ"),
    "title" : MessageLookupByLibrary.simpleMessage("إبقى على إتصال (عرض ترجمة)")
  };
}
