import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:ai_newsx/RowOfApps.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'firebase_options.dart';

import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:dev_icons/dev_icons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            textTheme: const TextTheme(
              bodySmall: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(240, 238, 237, 1),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black)),
        color: Colors.black,
        home: const Directionality(
          textDirection: TextDirection.ltr,
          child: MyHomePage(title: "AI Pool 🌊"),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(51, 0, 0, 0),
        title: GestureDetector(
          child: Text(widget.title),
          onTap: () => window.location.reload(), //Reload page when tapped
        ),
        actions: [
          IconButton(
              tooltip: "My LinkedIn",
              onPressed: () async {
                const linkedIn = "https://www.linkedin.com/in/codingwithadi/";
                if (await canLaunch(linkedIn)) {
                  await launch(linkedIn);
                } else {
                  throw 'Could not launch $linkedIn';
                }
              },
              icon: const Icon(DevIcons.linkedinPlain)
              // icon: const Text(
              //   "LinkedIn",
              //   style: TextStyle(color: Colors.black),
              // ),
              ),
          IconButton(
              tooltip: "My Github",
              onPressed: () async {
                const githubUrl = "https://github.com/OthmanAdi";
                if (await canLaunch(githubUrl)) {
                  await launch(githubUrl);
                } else {
                  throw 'Could not launch $githubUrl';
                }
              },
              icon: const Icon(DevIcons.githubOriginal)
              //   icon: const Text("Github",
              //       style: TextStyle(color: Colors.black)),
              )
        ],
      ),
      body: RowOfApps(),
    );
  }
}
