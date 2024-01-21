import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:sortinghat/Screens/la.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:card_swiper/card_swiper.dart';


void main() {
  runApp(HogwartsSortingApp());
}

class HogwartsSortingApp extends StatelessWidget {
  const HogwartsSortingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}