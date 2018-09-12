import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactsProvider extends InheritedWidget {
  final List<Contact> contacts = [
    Contact(name: 'Adam Doe', contactNextAt: DateTime(2018, 10, 1)),
    Contact(name: 'Sally Doe', contactNextAt: DateTime(2018, 10, 12)),
  ];

  ContactsProvider({Key key, Widget child}) : super(key: key, child: child);

  static List<Contact> of(BuildContext context) {
    final provider = (context.inheritFromWidgetOfExactType(ContactsProvider)
        as ContactsProvider);

    return provider.contacts;
  }

  @override
  bool updateShouldNotify(ContactsProvider old) =>
      old.contacts != this.contacts;
}
