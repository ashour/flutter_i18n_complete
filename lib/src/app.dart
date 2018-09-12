import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'lang/sit_localizations.dart';
import 'lang/sit_localizations_delegate.dart';
import 'screens/add_contact_screen.dart';
import 'screens/home_screen.dart';
import 'shared_state/contacts_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactsProvider(
      child: MaterialApp(
        onGenerateTitle: (BuildContext context) =>
            SitLocalizations.of(context).title,
        localizationsDelegates: [
          const SitLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar'),
          const Locale('en'),
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: _getCurrentRoute,
      ),
    );
  }

  MaterialPageRoute _getCurrentRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/add':
        return MaterialPageRoute(
          builder: (context) =>
              AddContactScreen(contacts: ContactsProvider.of(context)),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(
                title: SitLocalizations.of(context).title,
                contacts: ContactsProvider.of(context),
              ),
        );
    }
  }
}
