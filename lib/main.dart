import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitingamechi/core/theme/theme_cubit/dark_mode_cubit.dart';
import 'package:nitingamechi/utils/theme/dark_theme.dart';

import 'ui/features/home/view/home_screen.dart';
import 'utils/theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool prefThemeValue = await ThemePreference.getTheme();
  runApp(
    BlocProvider<DarkModeCubit>(
      create: (context) => DarkModeCubit()..changeTheme(prefThemeValue),
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
        return MaterialApp(
          title: 'Nitin Gamechi',
          debugShowCheckedModeBanner: false,
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
