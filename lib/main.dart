import 'package:android_club_redesign/pages/home.dart';
import 'package:android_club_redesign/pages/our_team.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OptionsPage(),
      home: OurTeamPage(),
    );
  }
}