import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('tr', 'TR'),
        // Locale('ar', ''),
      ],
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MaterialLocalizations.of(context).okButtonLabel,
            ),
            const Divider(),
            Localizations.override(
                context: context,
                locale: const Locale('en'),
                child: Builder(
                  builder: (context) {
                    return Text(
                      MaterialLocalizations.of(context).okButtonLabel,
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
