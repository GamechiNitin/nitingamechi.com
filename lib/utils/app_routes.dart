import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nitingamechi/ui/features/contact/contact_screen.dart';
import 'package:nitingamechi/ui/features/home/view/web/cubit/nav_cubit.dart';
import 'package:nitingamechi/ui/features/home/view/web/nav_screen.dart';
import 'package:nitingamechi/ui/features/project/view/project_screen.dart';
import 'package:nitingamechi/ui/features/resume/view/resume_screen.dart';

enum AppRouteEnum { splash, home, resume, project, contact }

@immutable
abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: AppRouteEnum.splash.name,
        builder: (context, state) => BlocProvider(
          create: (context) => NavCubit(),
          child: const NavScreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRouteEnum.project.name}',
        name: AppRouteEnum.project.name,
        builder: (context, state) => const ProjectScreen(),
      ),
      GoRoute(
        path: '/${AppRouteEnum.resume.name}',
        name: AppRouteEnum.resume.name,
        builder: (context, state) => const ResumeScreen(),
      ),
      GoRoute(
        path: '/${AppRouteEnum.contact.name}',
        name: AppRouteEnum.contact.name,
        builder: (context, state) => const ContactScreen(),
      ),
    ],
  );
}
