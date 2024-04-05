import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/presentation/main/delivery_screen.dart';
import 'package:flutter_starbucks_ui_clone/presentation/main/main_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
          routes: <RouteBase>[
            GoRoute(path: 'delivery',
                builder: (BuildContext context, GoRouterState state) {
                  return const DeliveryScreen();
                })
          ]
      )
    ]
);