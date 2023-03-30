import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/provider.dart';
import 'package:weather_app/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tabs(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.pink.shade50,
            elevation: 0,
            foregroundColor: Colors.black87,
            iconTheme: const IconThemeData(
              color: Colors.black87,
            ),
          ),
          navigationBarTheme: const NavigationBarThemeData(
            labelTextStyle: MaterialStatePropertyAll(
              TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
