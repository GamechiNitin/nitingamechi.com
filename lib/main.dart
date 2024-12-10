import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/utils/theme/theme_cubit/dark_mode_cubit.dart';
import 'package:nitingamechi/ui/features/dashboard/presentation/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'init_dependencies.dart';
import 'utils/app_routes.dart';
import 'utils/theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  bool theme = await ThemePreference.getTheme();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DarkModeCubit>(
          create: (context) => DarkModeCubit()..changeTheme(theme),
        ),
        BlocProvider(create: (context) => serviceLocator<DashboardBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeCubit, DarkModeInitialState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Nitin Gamechi',
          debugShowCheckedModeBanner: false,
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme(context),
          darkTheme: AppTheme.darkTheme(context),
          routerConfig: AppRoutes.router,
        );
      },
    );
  }
}
