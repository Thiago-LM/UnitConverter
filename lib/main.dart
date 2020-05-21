import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'themes.dart';
import 'util/app_state_notifier.dart';
import 'pages/bottom_navbar_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Conversor de Unidades Flutter',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: BottomNavBarView(title: 'Conversor de Unidades'),
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}
