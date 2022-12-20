import 'package:flutter/material.dart';
import 'package:flutter_food/routes/app_routes.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voucher'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Basket Screen'),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.voucherScreen);
            },
          ),
        ),
      ),
    );
  }
}
