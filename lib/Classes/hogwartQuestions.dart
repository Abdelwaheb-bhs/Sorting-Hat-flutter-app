import 'package:sortinghat/Classes/hogwartsPossibility.dart';

class HogwartsQuestion {
  final String question;
  final String backgroundImage;
  final List<HogwartsPossibility> possibilities;
  String selectedAnswer;

  HogwartsQuestion({
    required this.question,
    required this.backgroundImage,
    required this.possibilities,
    this.selectedAnswer = '',
  });
}
