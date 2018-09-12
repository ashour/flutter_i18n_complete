import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../lang/sit_localizations.dart';
import '../models/contact.dart';

class ContactListItem extends StatelessWidget {
  final Contact contact;

  ContactListItem({this.contact});

  String get _formattedDate =>
      DateFormat('d/M/y').format(contact.contactNextAt);

  @override
  Widget build(BuildContext context) {
    final l10n = SitLocalizations.of(context);

    return Column(
      key: Key(contact.name),
      children: <Widget>[
        ListTile(
          title: Text(contact.name),
          subtitle: Text(l10n.contactNextAtDate(_formattedDate)),
        ),
        Divider(),
      ],
    );
  }
}
