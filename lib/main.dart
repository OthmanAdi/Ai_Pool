import 'package:ai_newsx/RowOfApps.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          primarySwatch: Colors.deepPurple,
          textTheme: const TextTheme(
            bodySmall: TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(240, 238, 237, 1),
            ),
          ),
        ),
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
  List<String> docIDs = [];

  Future getAppNames() async {
    // path to collection and fetch the Document
    await FirebaseFirestore.instance
        .collection("ai_apps")
        .get()
        // ignore: avoid_function_literals_in_foreach_calls
        .then((snapshot) => snapshot.docs.forEach((document) {
              if (kDebugMode) {
                print(document.reference);
                docIDs.add(document.reference.id);
                print(docIDs[0]);
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Align(
          alignment: Alignment.centerLeft,
        ),
        backgroundColor: const Color.fromRGBO(100, 100, 200, 0.2),
        title: GestureDetector(
          child: Text(widget.title),
          onTap: () => Navigator.pop(context), //Go back home on Tap
        ),
      ),
      body: RowOfApps(),
    );
  }
}
