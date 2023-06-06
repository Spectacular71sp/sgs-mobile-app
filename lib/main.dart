import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/splash.dart';
import './screens/login.dart';

void main() {
  // Step 2
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SGS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFEE6F2D)),
        fontFamily: 'ABeeZee',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        'login': (context) => const LoginScreen(),
      },
    );
  }
}