import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:safe_women/screens/datepicker.dart';
import 'package:safe_women/screens/login/Login.dart';
import 'package:safe_women/screens/menustration.dart';
import 'package:safe_women/screens/quiz.dart';
import 'package:safe_women/screens/results/avgResult.dart';
import 'package:safe_women/screens/results/goodResult.dart';
import 'package:safe_women/screens/results/poorResult.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Safe Women',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final number = '+917893620128';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Women Safety',
          style: TextStyle(fontFamily: 'Kanit', letterSpacing: 1.2),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 80),
                    textStyle: TextStyle(fontSize: 28),
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () async {
                    await FlutterPhoneDirectCaller.callNumber(number);
                    await Geolocator.checkPermission();
                    await Geolocator.requestPermission();

                    Position position = await Geolocator.getCurrentPosition(
                        desiredAccuracy: LocationAccuracy.high);
                    final Uri urlsms = Uri(
                      scheme: 'sms',
                      path: "7893620128",
                      queryParameters: <String, String>{
                        'body': Uri.encodeComponent(
                            'I am in DANGER please help me!. latitude = ${position.latitude} longitude = ${position.longitude}'),
                      },
                    );
                    if (await canLaunchUrl(urlsms)) {
                      await launchUrl(urlsms);
                    } else {
                      print('cannot launch this url');
                    }
                    // final Uri url = Uri(
                    //   scheme: 'tel',
                    //   path: "7893620128",
                    // );
                    // if (await canLaunchUrl(url)) {
                    //   await launchUrl(url);
                    // } else {
                    //   print('cannot launch this url');
                    // }
                  },
                  child: const Text(
                    "DANGER",
                    style: TextStyle(
                        // fontFamily: 'Overpass',
                        // color: Colors.red,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  )),

              //YELLOW BUTTON
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 80),
                    textStyle: TextStyle(fontSize: 28),
                    backgroundColor: Colors.yellowAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () async {
                    await FlutterPhoneDirectCaller.callNumber(number);
                    await Geolocator.checkPermission();
                    await Geolocator.requestPermission();

                    Position position = await Geolocator.getCurrentPosition(
                        desiredAccuracy: LocationAccuracy.high);

                    print(position.latitude);
                    if (kDebugMode) {
                      print(position.longitude);
                    }
                    // final Uri urlphone = Uri(
                    //   scheme: 'tel',
                    //   path: "7893620128",
                    // );
                    // if (await canLaunchUrl(urlphone)) {
                    //   await launchUrl(urlphone);
                    // } else {
                    //   print('cannot launch this url');
                    // }

                    final Uri urlsms = Uri(
                      scheme: 'sms',
                      path: "7893620128",
                      queryParameters: <String, String>{
                        'body': Uri.encodeComponent(
                            'I am in trouble please help me!. latitude = ${position.latitude} longitude = ${position.longitude}'),
                      },
                    );
                    if (await canLaunchUrl(urlsms)) {
                      await launchUrl(urlsms);
                    } else {
                      print('cannot launch this url');
                    }
                  },
                  child: const Text(
                    "PANIC",
                    style: TextStyle(
                        // color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 80),
                    textStyle: TextStyle(fontSize: 28),
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () async {
                    await FlutterPhoneDirectCaller.callNumber(number);
                    // final Uri url = Uri(
                    //   scheme: 'tel',
                    //   path: "7893620128",
                    // );
                    // if (await canLaunchUrl(url)) {
                    //   await launchUrl(url);
                    // } else {
                    //   print('cannot launch this url');
                    // }
                  },
                  child: const Text(
                    "HOSPITAL",
                    style: TextStyle(
                        // color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 80),
                    textStyle: TextStyle(fontSize: 28),
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Quiz()));
                  },
                  child: const Text(
                    "STRESS",
                    style: TextStyle(
                        // color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  )),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 80),
                textStyle: TextStyle(fontSize: 28),
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DatePicker()));
              },
              child: const Text(
                "MENSTRUATION",
                style: TextStyle(
                    // color: Colors.green,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              )),
        ],
      ),
    );
  }
}
