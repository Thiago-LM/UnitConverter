import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'themes.dart';
import 'route_generator.dart';
import 'pages/bottom_navbar_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Conversor de Unidades Flutter',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: BottomNavBarView(title: 'Conversor de Unidades'),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
