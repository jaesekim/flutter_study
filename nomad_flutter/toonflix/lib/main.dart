import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // 위젯은 key를 가지고 있고 이는 id처럼 쓰인다.
  // 플러터는 위젯 식별을 위해 이를 쓴다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
