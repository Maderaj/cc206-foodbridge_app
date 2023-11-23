import 'package:cc206_foodbridge_app/Components/institutions.dart';
import 'package:cc206_foodbridge_app/Components/Drawer_home.dart';
import 'package:flutter/material.dart';
import 'package:cc206_foodbridge_app/features/donation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Donation(),
        '/Donation': (context) => Donation(),
        '/institutions': (context) => InstitutionsPage(),
        '/DrawerHome': (context) => DrawerHome(),
      },
    );
  }
}
