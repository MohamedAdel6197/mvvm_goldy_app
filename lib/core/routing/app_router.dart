import 'package:flutter/material.dart';

import '../../main.dart';
import 'app_routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => MyApp());
      default:
        return MaterialPageRoute(builder: (context) => DefaultRoute());
    }
  }
}

class DefaultRoute extends StatelessWidget {
  const DefaultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('404')));
  }
}
