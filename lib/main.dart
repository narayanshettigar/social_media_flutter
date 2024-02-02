import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/reponsive/mobile_screen_layout.dart';
import 'package:social_media_flutter/reponsive/responsive_layout_screen.dart';
import 'package:social_media_flutter/reponsive/web_screen_layout.dart';
import 'package:social_media_flutter/screens/login_screen.dart';
import 'package:social_media_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialise app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAiT10dEOsz16dZNpIgCU3TxsUrv0jlfLg",
          authDomain: "social-media-flutter-84338.firebaseapp.com",
          projectId: "social-media-flutter-84338",
          storageBucket: "social-media-flutter-84338.appspot.com",
          messagingSenderId: "773306749946",
          appId: "1:773306749946:web:c348acc6e960730eb70a43"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: LoginScreen(),
    );
  }
}
