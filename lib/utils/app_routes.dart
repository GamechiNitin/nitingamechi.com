import 'package:flutter/foundation.dart' show immutable;
import 'package:go_router/go_router.dart';
import 'package:nitingamechi/ui/features/home/view/web/nav_screen.dart';
import 'package:nitingamechi/ui/features/project/view/project_screen.dart';

enum AppRouteEnum { splash, home, project }

@immutable
abstract class AppRoutes {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: AppRouteEnum.splash.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/${AppRouteEnum.project.name}',
      name: AppRouteEnum.project.name,
      builder: (context, state) => const ProjectScreen(),
    ),
  ]);
}
