import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GatewayPage extends StatelessWidget {
  const GatewayPage({
    super.key,
    required this.status,
  });

  final PaymentStatus status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(status.image, height: 150, width: 150),
            Text(
              status.massage,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

enum PaymentStatus {
  success,
  canceled,
  unknown;

  factory PaymentStatus.fromString(String status) {
    final map = <String, PaymentStatus>{
      'success': success,
      'canceled': canceled,
    };
    return map[status] ?? unknown;
  }

  String get massage {
    final map = <PaymentStatus, String>{
      success: 'Payment Success',
      canceled: 'Payment canceled',
    };
    return map[this] ?? 'unknown';
  }

  String get subMassage {
    final map = <PaymentStatus, String>{
      success: 'Payment Success',
      canceled: 'Payment canceled',
    };
    return map[this] ?? 'unknown';
  }

  String get image {
    final map = <PaymentStatus, String>{
      success: 'assets/lottie/pay_success.json',
      canceled: 'assets/lottie/canceled.json',
    };
    return map[this] ?? 'assets/lottie/canceled.json';
  }
}
