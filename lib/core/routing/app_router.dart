import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_workshop/features/gold/data/repos/gold_repo.dart';
import 'package:mvvm_workshop/features/gold/presentation/cubits/gold_cubit/gold_cubit.dart';
import 'package:mvvm_workshop/features/sliver/data/repos/sliver_repo.dart';

import '../../features/gold/presentation/screens/gold_screen.dart';
import '../../features/sliver/presentation/cubits/sliver_cubit.dart';
import '../../features/sliver/presentation/screens/sliver_screen.dart';
import '../../home_screen.dart';
import 'app_routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.gold:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => GoldCubit(repo: GoldRepo())..getGoldPrice(),
            child: GoldScreen(),
          ),
        );
      case AppRoutes.sliver:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                SliverCubit(repo: SliverRepo())..getSliverPrice(),
            child: SliverScreen(),
          ),
        );
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
