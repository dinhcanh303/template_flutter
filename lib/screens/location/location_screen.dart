import 'package:flutter/material.dart';
import 'package:flutter_food/routes/app_routes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Location Screen'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.locationScreen);
            },
          ),
        ),
      ),
    );
  }
}
