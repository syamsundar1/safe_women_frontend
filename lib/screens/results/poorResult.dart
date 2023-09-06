import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:lottie/lottie.dart';

class PoorResult extends StatefulWidget {
  const PoorResult({super.key});

  @override
  State<PoorResult> createState() => _PoorResultState();
}

class _PoorResultState extends State<PoorResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Center(
              child: LottieBuilder.asset('animations/doctor.json'),
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
                  MapsLauncher.launchQuery('psychologist hospital near me');
                },
                child: const Text(
                  "FIND DOCTOR",
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontFamily: 'Kanit',
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      )),
    );
  }
}
