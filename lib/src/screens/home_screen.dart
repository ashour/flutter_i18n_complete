import 'package:flutter/material.dart';

import '../lang/sit_localizations.dart';
import '../models/contact.dart';
import '../widgets/contact_list_item.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  final List<Contact> contacts;

  HomeScreen({this.title, this.contacts});

  @override
  Widget build(BuildContext context) {
    // Sort contact list by earliest to contact. This may not
    // be great for perfomance, since we could potentially
    // be sorting a large list on every build(). It could be
    // better to turn this Widget into a StatefulWidget or
    // otherwise maintain sorted contacts as state outside of
    // the Widget.
    final sortedContacts = List<Contact>.from(contacts)
      ..sort((a, b) => a.contactNextAt.compareTo(b.contactNextAt));

    final l10n = SitLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: false,
        elevation: 0.0,
        actions: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(l10n.contactCount(sortedContacts.length)),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sortedContacts.length,
        itemBuilder: (_, int index) =>
            ContactListItem(contact: sortedContacts[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/add'),
      ),
    );
  }
}
