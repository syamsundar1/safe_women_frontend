import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:safe_women/screens/quiz.dart';

class GoodResult extends StatelessWidget {
  const GoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Lottie.asset('animations/congratulations.json',
                  height: 200, repeat: true, reverse: true, fit: BoxFit.cover),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "We appreciate for having good mental health",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Kalam',
                  ),
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
