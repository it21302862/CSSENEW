import 'package:flutter/material.dart';
import 'package:flutter_login_app/screens/signin_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD9k3o5dh27xmmtFQOrSc4Bn2od5M32ijM",
      appId: "1:779259085775:android:85d0420e8a2fc957f5c8ba",
      messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
      projectId: "csse-ff0bc",
    ),
  );
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
  // runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInScreen()
    );
  }
}

