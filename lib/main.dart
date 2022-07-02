import 'package:flutter/material.dart';
import 'package:instagra_clone/src/config/scroll_config.dart';
import 'package:instagra_clone/src/view/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: DragScrollBehaviorMacOS(),
      theme: ThemeData(
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(backgroundColor: Colors.white),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: const ColorScheme.light(onPrimary: Colors.black)),
      home: const MainScreen(),
    );
  }
}
