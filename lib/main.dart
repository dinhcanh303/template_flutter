import 'package:flutter/material.dart';
import 'package:flutter_food/routes/app_router.dart';
import 'package:flutter_food/routes/app_routes.dart';
import 'package:flutter_food/themes/app_themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ThemeProvider()),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo NDC',
        themeMode: Provider.of<ThemeProvider>(context).themeMode,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        initialRoute: AppRoutes.homeScreen,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
