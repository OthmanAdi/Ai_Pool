import 'package:ai_newsx/appNames.dart';
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
      home: const MyHomePage(title: "AI Pool 🌊"),
    );
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  bottom: MediaQuery.of(context).size.height * 0.07,
                ),
                child: const Text.rich(
                  TextSpan(
                    text:
                        " Enter the new Internet,\n and optimize your life \n with the tools below",
                    style: TextStyle(
                      color: Color.fromRGBO(240, 238, 237, 1),
                      letterSpacing: 8,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FutureBuilder(
                                future: getAppNames(),
                                builder: (context, snapshot) {
                                  return AppNames(documentID: docIDs[1]);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "App Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "App Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "App Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Image.network(
                                "",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Divider(
                              color: Color.fromARGB(37, 249, 250, 248),
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: RichText(
                                  text: TextSpan(
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(240, 238, 237, 1),
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Text("Visit Website"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
