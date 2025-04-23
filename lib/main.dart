import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:untitled21/signUp.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // ⬅️ هذا السطر مهم جدًا
  );
  runApp(MainClass());
}


class MainClass extends StatefulWidget {
  const MainClass({super.key});

  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // لتخفي الشريط الأحمر
      home: SignUp(),
    );
  }
}
