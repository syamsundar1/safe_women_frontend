import 'package:flutter/material.dart';
import 'package:safe_women/screens/quiz.dart';

class AvgResult extends StatelessWidget {
  const AvgResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "1. Get in a routine",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "2. Set goals.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "3. Exercise.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "4. Eat healthy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "5. Get enough sleep.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "6. Take on responsibilities.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "7. Challenge negative thoughts.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "8. Check with your doctor before using supplements.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, letterSpacing: 1.2, fontFamily: 'Kanit'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Quiz()));
              },
              child: const Text(
                "RE-TEST",
                style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'Kanit',
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    )));
  }
}
