import 'dart:math';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HogwartsSortingApp());
}

class HogwartsSortingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hogwarts Sorting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
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
    HogwartsPossibility currentPossibility =
        currentQuestion.possibilities[currentPossibilityIndex];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            hogwartsQuestions[currentQuestionIndex].backgroundImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          PageView.builder(
            itemCount: hogwartsQuestions[currentQuestionIndex].possibilities.length,
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) {
              // Add any logic you need when a page changes
            },
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                    answerQuestion(hogwartsQuestions[currentQuestionIndex].possibilities[index].text);
                  },
                child: Center(
                  child: Card(
                    
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      width: 350,
                      height: 230,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            hogwartsQuestions[currentQuestionIndex].possibilities[index].images[0],
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            hogwartsQuestions[currentQuestionIndex].possibilities[index].text,
                            style: TextStyle(fontSize: 16.0, color: Colors.black),
                            textAlign: TextAlign.center,
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
      ),);
  }
}

class CongratulationsPage extends StatelessWidget {
  final String houseName;

  CongratulationsPage(this.houseName);

  @override
  Widget build(BuildContext context) {
    Color houseColor = getHouseColor(houseName);
    String houseLogo = getHouseLogo(houseName);

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
                houseName,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
              ),
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
      return Colors.red;
    case 'Hufflepuff':
      return Colors.yellow;
    case 'Ravenclaw':
      return Colors.blue;
    case 'Slytherin':
      return Colors.green;
    default:
      return Colors.grey;
  }
}

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

class HogwartsPossibility {
  final String text;
  final List<String> images;
  final Map<String, int> housePoints;

  HogwartsPossibility({
    required this.text,
    required this.images,
    required this.housePoints,
  });
}