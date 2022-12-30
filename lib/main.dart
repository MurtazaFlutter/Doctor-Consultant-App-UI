import 'package:doctor_consultant_ui/screens/doctor_detail_screen.dart';
import 'package:flutter/material.dart';

import 'constants/doctor_app_theme.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor Consultant App',
        theme: DoctorAppTheme.lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/doctor_detail': (context) => const DoctorDetailScreen(),
        });
  }
}
