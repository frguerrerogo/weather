import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../core/config/flavors.dart';
import 'weather/my_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomeScreen(),
    );
  }
}
