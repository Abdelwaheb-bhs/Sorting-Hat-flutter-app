import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class CongratulationsPage extends StatefulWidget {
  final String houseName;
  static const screenroute ='congratulation-screen';
  CongratulationsPage(this.houseName);

  @override
  State<CongratulationsPage> createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State<CongratulationsPage> {
  late ConfettiController _confetti;
  late ConfettiController _confettiTap;

  @override
  @override
  void initState() {
    super.initState();
    _confetti = ConfettiController(duration: Duration(seconds: 5));
    _confettiTap= ConfettiController(duration: Duration(seconds: 6));
  }
  
  Widget build(BuildContext context) {
    Color houseColor = getHouseColor(widget.houseName);
    Color conffeti = confettiColor(widget.houseName);

    String houseLogo = getHouseLogo(widget.houseName);


    return Scaffold(
      appBar: AppBar(
        title: Text('Congratulations'),
        backgroundColor: houseColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(houseLogo),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have been chosen to be in',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                widget.houseName,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              ConfettiWidget(
                confettiController: _confetti,
                blastDirection: pi/2,
                emissionFrequency: 0.5,
                gravity:0.5 ,
                colors: [houseColor,conffeti],
                
                ),
                ConfettiWidget(
                confettiController: _confettiTap,
                blastDirection: pi/2,
                emissionFrequency: 0.5,
                gravity:0.1 ,
                colors: [houseColor,conffeti],
                
                )
              
            ],
          ),
        ),
      ),
    );
  }
}

String getHouseLogo(String houseName) {
  switch (houseName) {
    case 'Gryffindor':
      return 'images/gryffindor_logo.png';
    case 'Hufflepuff':
      return 'images/hufflepuff_logo.png';
    case 'Ravenclaw':
      return 'images/ravenclaw_logo.png';
    case 'Slytherin':
      return 'images/slytherin_logo.png';
    default:
      return '';
  }
}

Color getHouseColor(String houseName) {
  switch (houseName) {
    case 'Gryffindor':
      return Color.fromARGB(255, 191, 19, 7);
    case 'Hufflepuff':
      return Color.fromARGB(255, 252, 204, 12);
    case 'Ravenclaw':
      return Color.fromARGB(255, 6, 82, 144);
    case 'Slytherin':
      return const Color.fromARGB(255, 45, 133, 48);
    default:
      return Colors.grey;
  }
}
Color confettiColor(String houseName) {
  switch (houseName) {
    case 'Gryffindor':
      return Color.fromARGB(255, 252, 204, 12);
    case 'Hufflepuff':
      return Colors.black;
    case 'Ravenclaw':
      return Colors.white;
    case 'Slytherin':
      return Colors.white;
    default:
      return Colors.grey;
  }
}


