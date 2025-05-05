import 'package:flutter/material.dart';
import 'package:lab4_1/app/view/splash/splash_page.dart';
import 'package:lab4_1/app/view/task_list/Task_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color.fromARGB(255, 18, 0, 222);
    const textColor = Color.fromARGB(255, 205, 0, 0);
    const backgroundColor = Color.fromARGB(255, 133, 227, 232);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Eliminando el banner de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: textColor,
          displayColor: textColor,
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
