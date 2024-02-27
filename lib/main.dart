import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instaclone/Responsive/mobile_screen_layout.dart';
import 'package:instaclone/Responsive/responsive_screen_layout.dart';
import 'package:instaclone/Responsive/web_screen_layout.dart';
import 'package:instaclone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
