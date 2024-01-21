import 'package:flutter/material.dart';
import 'package:sortinghat/Screens/hatSelection.dart';


class WelcomePage extends StatelessWidget {
  static const screenroute ='welcome-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 7, 7),
        title: Text('Welcome to Hogwarts'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/welcome_background.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 146, 46, 46),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 500),
                    pageBuilder: (_, __, ___) => HatSelectionPage(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      var begin = Offset(1.0, 0.0);
                      var end = Offset.zero;
                      var tween = Tween(begin: begin, end: end);
                      var curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
                      return SlideTransition(
                        position: tween.animate(curvedAnimation),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Text('Hat Selection'),
            ),
          ),
        ],
      ),
    );
  }
}