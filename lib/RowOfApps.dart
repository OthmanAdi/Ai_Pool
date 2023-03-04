import 'package:ai_newsx/CoPilot.dart';
import 'package:ai_newsx/Dale2.dart';
import 'package:ai_newsx/Chatgpt.dart';
import 'package:ai_newsx/Lensa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

class RowOfApps extends StatelessWidget {
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
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.04,
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
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
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
                                    return CoPilot(documentID: docIDs[0]);
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
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
                                    return CoPilot(documentID: docIDs[0]);
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
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
                                    return CoPilot(documentID: docIDs[0]);
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Row(children: <Widget>[
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
                                    return CoPilot(documentID: docIDs[0]);
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Dale2(documentID: docIDs[0]);
                                  },
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
                                      backgroundColor: const Color.fromRGBO(
                                          240, 238, 237, 1),
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
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ])))),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                                child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FutureBuilder(
                                  future: getAppNames(),
                                  builder: (context, snapshot) {
                                    return Lensa(documentID: docIDs[0]);
                                  },
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
                                          backgroundColor: const Color.fromRGBO(
                                              240, 238, 237, 1),
                                          foregroundColor: Colors.black,
                                        ),
                                        child: const Text("Visit Website"),
                                      )))
                            ]))))
                  ]),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Text(
                                "Made by: Othman Adi with Flutter and Firebase"),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Text("Copyright @ 2023"),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.email_rounded),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.email_rounded),
                                  )
                                ]),
                          )
                        ],
                      )),
                ])))
      ])),
    );
  }
}
