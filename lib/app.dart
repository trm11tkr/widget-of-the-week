import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/home_page.dart';
import 'package:widget_of_the_week/pages/safe_area.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget of the Week',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        SafeAreaPage.routeName: (context) => const SafeAreaPage(),
      },
    );
  }
}
