import 'package:flutter/material.dart';
import 'package:safe_women/screens/results/avgResult.dart';
import 'package:safe_women/screens/results/goodResult.dart';
import 'package:safe_women/screens/results/poorResult.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int depression = 0;
  bool isButtonClickable1 = true;
  bool isButtonClickable2 = true;
  bool isButtonClickable3 = true;
  bool isButtonClickable4 = true;
  bool isButtonClickable5 = true;
  bool isButtonClickable6 = true;
  bool isButtonClickable7 = true;
  bool isButtonClickable8 = true;
  bool isButtonClickable9 = true;
  bool isButtonClickable10 = true;

  bool isButtonClickable1n = true;
  bool isButtonClickable2n = true;
  bool isButtonClickable3n = true;
  bool isButtonClickable4n = true;
  bool isButtonClickable5n = true;
  bool isButtonClickable6n = true;
  bool isButtonClickable7n = true;
  bool isButtonClickable8n = true;
  bool isButtonClickable9n = true;
  bool isButtonClickable10n = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "1. do you feel positive about your life?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable1 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable1) {
                                    ButtonClickedPlus();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable1n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable1n) {
                                    ButtonClickedMinus();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //2

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "2. Feeling down, depressed, or hopeless?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable2 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable2) {
                                    ButtonClickedPlus2();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable2n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable2n) {
                                    ButtonClickedMinus2();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //3

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "3. Trouble falling or staying asleep, or sleeping too much?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable3 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable3) {
                                    ButtonClickedPlus3();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable3n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable3n) {
                                    ButtonClickedMinus3();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //4
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "4. Feeling tired or having little energy?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable4 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable4) {
                                    ButtonClickedPlus4();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable4n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable4n) {
                                    ButtonClickedMinus4();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //5
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "5. Poor appetite or overeating?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable5 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable5) {
                                    ButtonClickedPlus5();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable5n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable5n) {
                                    ButtonClickedMinus5();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //6
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "6. Feeling bad about yourself - or that you are a failure or have let yourself or your family down?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable6 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable6) {
                                    ButtonClickedPlus6();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable6n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable6n) {
                                    ButtonClickedMinus6();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //7

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "7. Trouble concentrating on things, such as reading the newspaper or watching television?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable7 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable7) {
                                    ButtonClickedPlus7();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable7n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable7n) {
                                    ButtonClickedMinus7();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //8

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "8. Moving or speaking so slowly that other people could have noticed?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable8 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable8) {
                                    ButtonClickedPlus8();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable8n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable8n) {
                                    ButtonClickedMinus8();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //9

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "9. Thoughts that you would be better off dead, or of hurting yourself?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable9 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable9) {
                                    ButtonClickedPlus9();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable9n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable9n) {
                                    ButtonClickedMinus9();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),

                    //10

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "10. If you've had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people?",
                        style: TextStyle(
                            fontSize: 25.0,
                            // letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Overpass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Opacity(
                            opacity: isButtonClickable10 ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable10) {
                                    ButtonClickedPlus10();
                                  }
                                },
                                child: const Text(
                                  "YES",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Opacity(
                            opacity: isButtonClickable10n ? 1.0 : 0.2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    foregroundColor: Colors.white),
                                onPressed: () {
                                  if (isButtonClickable10n) {
                                    ButtonClickedMinus10();
                                  }
                                },
                                child: const Text(
                                  "NO",
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontFamily: 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.greenAccent,
                              foregroundColor: Colors.white),
                          onPressed: () {
                            if (depression > 7) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PoorResult()));
                            } else if (depression < 7 && depression > 3) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AvgResult()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GoodResult()));
                            }
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                letterSpacing: 1.5,
                                fontFamily: 'Kanit',
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ButtonClickedPlus() {
    setState(() {
      isButtonClickable1 = false;
      depression++;
    });
  }

  void ButtonClickedMinus() {
    setState(() {
      isButtonClickable1n = false;
      depression--;
    });
  }

  //2
  void ButtonClickedPlus2() {
    setState(() {
      isButtonClickable2 = false;
      depression++;
    });
  }

  void ButtonClickedMinus2() {
    setState(() {
      isButtonClickable2n = false;
      depression--;
    });
  }

  //3
  void ButtonClickedPlus3() {
    setState(() {
      isButtonClickable3 = false;
      depression++;
    });
  }

  void ButtonClickedMinus3() {
    setState(() {
      isButtonClickable3n = false;
      depression--;
    });
  }

  //4
  void ButtonClickedPlus4() {
    setState(() {
      isButtonClickable4 = false;
      depression++;
    });
  }

  void ButtonClickedMinus4() {
    setState(() {
      isButtonClickable4n = false;
      depression--;
    });
  }

  //5
  void ButtonClickedPlus5() {
    setState(() {
      isButtonClickable5 = false;
      depression++;
    });
  }

  void ButtonClickedMinus5() {
    setState(() {
      isButtonClickable5n = false;
      depression--;
    });
  }

  //6
  void ButtonClickedPlus6() {
    setState(() {
      isButtonClickable6 = false;
      depression++;
    });
  }

  void ButtonClickedMinus6() {
    setState(() {
      isButtonClickable6n = false;
      depression--;
    });
  } //

  //7
  void ButtonClickedPlus7() {
    setState(() {
      isButtonClickable7 = false;
      depression++;
    });
  }

  void ButtonClickedMinus7() {
    setState(() {
      isButtonClickable7n = false;
      depression--;
    });
  }

  //8
  void ButtonClickedPlus8() {
    setState(() {
      isButtonClickable8 = false;
      depression++;
    });
  }

  void ButtonClickedMinus8() {
    setState(() {
      isButtonClickable8n = false;
      depression--;
    });
  }

  //9
  void ButtonClickedPlus9() {
    setState(() {
      isButtonClickable9 = false;
      depression++;
    });
  }

  void ButtonClickedMinus9() {
    setState(() {
      isButtonClickable9n = false;
      depression--;
    });
  }

  //10
  void ButtonClickedPlus10() {
    setState(() {
      isButtonClickable10 = false;
      depression++;
    });
  }

  void ButtonClickedMinus10() {
    setState(() {
      isButtonClickable10n = false;
      depression--;
    });
  }
}
