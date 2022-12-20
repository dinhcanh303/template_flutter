import 'package:flutter/material.dart';
import 'package:flutter_food/components/components.dart';
import 'package:flutter_food/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const SafeArea(
        child: Center(child: SwitchChangeTheme()),
      ),
    );
  }
}
