import 'package:flutter/material.dart';
import 'package:github/navigations/app_router.dart';

void main() {
  runApp(const FurnitureShop());
}

class FurnitureShop extends StatelessWidget {
  const FurnitureShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRouter().router.routeInformationProvider,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
