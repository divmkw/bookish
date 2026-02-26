// import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/theme/app_theme.dart';
import 'screens/Home_page.dart';

void main() async {
  // Required to ensure the Flutter framework is ready before initializing Firebase
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the auto-generated configuration
  await Firebase.initializeApp(); /*options: DefaultFirebaseOptions.currentPlatform);*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const LoginScreen(), const HomePage()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}
