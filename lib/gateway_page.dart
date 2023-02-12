import 'package:flutter/material.dart';

class GatewayPage extends StatelessWidget {
  const GatewayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Payment Success',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}
