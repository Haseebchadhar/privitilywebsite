import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'sections/home_banner_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Wrap your entire app in ResponsiveBreakpoints
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),

      title: 'Privatily Clone',
      theme: ThemeData(primarySwatch: Colors.indigo),

      // You can’t use both home: and initialRoute:/ without defining routes.
      // So just use home:
      home: const HomeBannerSection(),
    );
  }
}
