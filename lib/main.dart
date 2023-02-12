import 'package:flutter/material.dart';
import 'package:gng_getaways/gateway_page.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  Routemaster.setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GNG Getaways',
      routeInformationParser: const RoutemasterParser(),
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) => routes,
      ),
    );
  }
}

final routes = RouteMap(
  routes: {
    '/': (route) {
      final statusQuery = route.queryParameters['status'];
      final status = PaymentStatus.fromString(statusQuery ?? '');
      return MaterialPage(
        child: GatewayPage(status: status),
      );
    },
  },
);
