import 'package:flutter/material.dart';
import 'congratulationPage.dart';
import '../Classes/hogwartQuestions.dart';
import '../Classes/hogwartsPossibility.dart';
import 'dart:math';

class HatSelectionPage extends StatefulWidget {
  @override
  _HatSelectionPageState createState() => _HatSelectionPageState();
}

class _HatSelectionPageState extends State<HatSelectionPage> {
  late List<HogwartsQuestion> hogwartsQuestions;
  late int currentQuestionIndex;
  late int currentPossibilityIndex;

  @override
  void initState() {
    super.initState();
    hogwartsQuestions = [
       HogwartsQuestion(
        question: 'During the end-of-year exams, you notice that one of your classmates was using an enchanted quill. You come top of the class anyway, but they are second. What do you do?',
        backgroundImage: 'images/kno.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Tell the professor immediately cheating is wrong, no matter what.',
            images: ['images/MV5BNDAzMTQyODUtYzRlYi00OGUxLTkzYjYtNmFhYWJlNmI0ZTYxXkEyXkFqcGdeQXVyNjQ4ODE4MzQ@._V1_.jpg'], 
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},
          ),
          HogwartsPossibility(
            text: 'Nothing, but if I hadnt come top of the class, Id definitely tell the professor.',
            images: ['images/yhcuj7isaaaa.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Encourage the other student to admit what theyd done to the professor.',
            images: ['images/DTJk96FU0AE9LAy.jpeg'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Give them a high five for managing to sneak the quill into the exam.',
            images: ['images/MV5BODhmYjFhOTQtNjMxNy00NGM5LTlmZTItN2U0OTY1NDM5ZGFmXkEyXkFqcGdeQXVyNjQ4ODE4MzQ@._V1_.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'Which of the following do you find most difficult to deal with?',
        backgroundImage: 'images/a.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Expecto Patronum',
            images: ['images/expecto_patronum.jpg'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 0},
            

          ),
          HogwartsPossibility(
            text: 'Avada Kedavra',
            images: ['images/avada_kedavra.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Wingardium Leviosa',
            images: ['images/colorful.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Occlumency',
            images: ['images/occlumency.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Lumos',
            images: ['images/lumos.jpg'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Crucio',
            images: ['images/Patreon.jpeg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'You’ve made it to Hogwarts, which means you’ve already bought a wand from Ollivander’s. What material is at its core?',
        backgroundImage: 'images/wand.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Phoenix Feather',
            images: ['images/Pheonix-Feather-Walnut-Wood-Harry-Potter.jpg'],
                        housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Dragon Heartstring',
            images: ['images/Dragon-Heartstring-Wand-Harry-Potter.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Unicorn Hair',
            images: ['images/Unicorn-Wand-Harry-Potter.jpg'],
                        housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'What kind of creature would you bring to Hogwarts as a pet?',
        backgroundImage: 'images/diagon.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Owl',
            images: ['images/HermioneGranger_PM_B4C28M1_HermioneOpeningHateMailOwls.Moment.jpg'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Cat',
            images: ['images/cat.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'How would you like to be known to history?',
        backgroundImage: 'images/cards.jpeg',
        possibilities: [
          HogwartsPossibility(
            text: 'The Great',
            images: ['images/the great.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'The Bold',
            images: ['images/the brave.jpg'],
                        housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'The Wise',
            images: ['images/The wise.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'The Good',
            images: ['images/the good.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'Which of the following would you most like to study?',
        backgroundImage: 'images/beast.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Werewolves',
            images: ['images/were.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Dementors',
            images: ['images/deman.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'House Elves',
            images: ['images/house.jpg'],
              housePoints: {'Gryffindor': 1, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Hippogriff',
            images: ['images/afc9291317032e6fb04cde8969682021--creature-concept-art-new-books.jpg'],
                        housePoints: {'Gryffindor': 1, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Acromantula',
            images: ['images/accro.jpg'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Centaurs',
            images: ['images/center.jpg'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'Which subject at Hogwarts do you find most interesting?',
        backgroundImage: 'images/before.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Charms',
            images: ['images/Charms.png'],
             housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Divination',
            images: ['images/divination.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Potions',
            images: ['images/potion.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
          HogwartsPossibility(
            text: 'Herbology',
            images: ['images/herbology.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
        ],
      ),
      HogwartsQuestion(
        question: 'And finally: We know that the Sorting Hat takes into account your preferences. So which Hogwarts house do you feel you identify with most closely?',
        backgroundImage: 'images/lett.jpg',
        possibilities: [
          HogwartsPossibility(
            text: 'Gryffindor',
            images: ['images/zmhxgndis2r21-removebg-preview.png'],
            housePoints: {'Gryffindor': 1, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Hufflepuff',
            images: ['images/ffyty3mbw2r21-removebg-preview.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 1, 'Ravenclaw': 0, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Ravenclaw',
            images: ['images/6yarizyjk1r21-removebg-preview.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 1, 'Slytherin': 0},

          ),
          HogwartsPossibility(
            text: 'Slytherin',
            images: ['images/139-1390369_click-and-drag-to-re-position-the-image-removebg-preview.png'],
            housePoints: {'Gryffindor': 0, 'Hufflepuff': 0, 'Ravenclaw': 0, 'Slytherin': 1},

          ),
        ],
      ),
    ];
    currentQuestionIndex = 0;
    currentPossibilityIndex = 0;
  }

  void answerQuestion(String answer) {
    hogwartsQuestions[currentQuestionIndex].selectedAnswer = answer;

    if (currentQuestionIndex < hogwartsQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      String selectedHouse = getSelectedHouse();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => CongratulationsPage(selectedHouse),
        ),
      );
    }
  }

  void nextPossibility() {
    if (currentPossibilityIndex < hogwartsQuestions[currentQuestionIndex].possibilities.length - 1) {
      setState(() {
        currentPossibilityIndex++;
      });
    }
  }

  void previousPossibility() {
    if (currentPossibilityIndex > 0) {
      setState(() {
        currentPossibilityIndex--;
      });
    }
  }

  String getSelectedHouse() {
    Map<String, int> housePoints = {
      'Gryffindor': 0,
      'Hufflepuff': 0,
      'Ravenclaw': 0,
      'Slytherin': 0,
    };

    for (var question in hogwartsQuestions) {
      String selectedAnswer = question.selectedAnswer;

      for (var possibility in question.possibilities) {
        if (possibility.text == selectedAnswer) {
          for (var entry in possibility.housePoints.entries) {
            housePoints[entry.key] =(housePoints[entry.key]! + entry.value)!;
          }
        }
      }
    }

    int maxPoints = housePoints.values.reduce((max, points) => points > max ? points : max);
    List<String> possibleHouses =
        housePoints.entries.where((entry) => entry.value == maxPoints).map((entry) => entry.key).toList();

    Random random = Random();
    String selectedHouse = possibleHouses[random.nextInt(possibleHouses.length)];

    return selectedHouse;
  }

  @override
  Widget build(BuildContext context) {
    HogwartsQuestion currentQuestion = hogwartsQuestions[currentQuestionIndex];
    HogwartsPossibility currentPossibility = currentQuestion.possibilities[currentPossibilityIndex];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Hero(
            tag: 'backgroundImage${currentQuestionIndex}',
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(currentQuestion.backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          PageView.builder(
            itemCount: hogwartsQuestions[currentQuestionIndex].possibilities.length,
            controller: PageController(viewportFraction: 0.9),
            onPageChanged: (int index) {
              // Add any logic you need when a page changes
            },
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  answerQuestion(hogwartsQuestions[currentQuestionIndex].possibilities[index].text);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(35.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            currentQuestion.question,
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.0),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: currentQuestionIndex == 0 ? 200 : 150, // Adjust as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Hero(
                                tag: 'image${currentQuestionIndex}',
                                child: Image.asset(
                                  hogwartsQuestions[currentQuestionIndex].possibilities[index].images[0],
                                  width: 300,
                                  height: currentQuestionIndex == 0 ? 200 : 150, // Adjust as needed
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            hogwartsQuestions[currentQuestionIndex].possibilities[index].text,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  setState(() {
                                    answerQuestion(currentPossibility.text);
                                  });
                                },
                                child: Ink.image(
                                  image: AssetImage('images/wand.gif'),
                                  height: 170,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 16.0),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}
