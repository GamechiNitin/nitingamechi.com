import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/core/theme/theme_cubit/dark_mode_cubit.dart';
import 'package:nitingamechi/ui/features/home/view/bloc/home_bloc.dart';
import 'package:nitingamechi/utils/theme/dark_theme.dart';
import 'utils/app_routes.dart';
import 'utils/theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool prefThemeValue = await ThemePreference.getTheme();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DarkModeCubit>(
          create: (context) => DarkModeCubit()..changeTheme(prefThemeValue),
        ),
        BlocProvider(
          create: (context) => HomeBloc()..add(const HomeEvent.fetchData()),
        ),
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
        log(MediaQuery.of(context).size.width.toString());
        return MaterialApp.router(
          title: 'Nitin Gamechi',
          debugShowCheckedModeBanner: false,
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          routerConfig: AppRoutes.router,
        );
      },
    );
  }
}
