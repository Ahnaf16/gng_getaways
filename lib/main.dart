import 'package:flutter/material.dart';
import 'package:gng_getaways/gateway_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GNG Getaways',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GatewayPage(),
    );
  }
}
