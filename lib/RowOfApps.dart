import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:dev_icons/dev_icons.dart';

class RowOfApps extends StatelessWidget {
  const RowOfApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AiAppsRows(),
    );
  }
}

class AiAppsRows extends StatefulWidget {
  @override
  _AiAppsRowsState createState() => _AiAppsRowsState();
}

class _AiAppsRowsState extends State<AiAppsRows> {
//add late to tell the IDE that this will be used soon
  late Stream<QuerySnapshot> streamOfData;

  CollectionReference _dBRef = FirebaseFirestore.instance.collection('ai_apps');

  @override
  void initState() {
    super.initState();
    streamOfData = _dBRef.snapshots();
  }

  @override
  Widget build(BuildContext context) {
    _dBRef.get(); //cant listen to update and return future
    _dBRef.snapshots(); //can listen to updates and return a stream

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.04,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            child: Text.rich(
              style: GoogleFonts.alexandria(fontStyle: FontStyle.normal),
              const TextSpan(
                mouseCursor: SystemMouseCursors.basic,
                text:
                    "أنضم للأنترنت الجديد, و أضف أدوات لعملك و هواياتك لحياه أسلس من لائحه الأدوات",
                style: TextStyle(
                  color: Color.fromRGBO(70, 69, 69, 1),
                  // letterSpacing: 8,
                  fontSize: 45,
                ),
              ),
            ),
          ),
        ),
        StreamBuilder(
            stream: streamOfData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError == true) {
                return Center(child: Text(snapshot.error.toString()));
              }
              // if (snapshot.connectionState == ConnectionState.active) {
              //   QuerySnapshot querySnapshot = snapshot.data;
              //   return Text(querySnapshot.docs.first.data().toString());
              // }
              if (snapshot.connectionState == ConnectionState.active) {
                QuerySnapshot querySnapshot = snapshot.data;
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: <Widget>[
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                    child: Column(children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(querySnapshot.docs[0]
                                          .get('Chatgpt')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const gptLink =
                                                  "https://openai.com/";
                                              if (await canLaunch(gptLink)) {
                                                await launch(gptLink);
                                              } else {
                                                throw 'Could not launch $gptLink';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('CoPilot')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://github.com/features/copilot";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('Lensa')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://prisma-ai.com/lensa";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('Dale2')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://openai.com/product/dall-e-2";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      240, 238, 237, 1),
                                              foregroundColor: Colors.black,
                                            ),
                                            child: const Text("Visit Website"),
                                          )))
                                ])))),
                      ]),
                      Row(children: <Widget>[
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                    child: Column(children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool5')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.kdnuggets.com/2023/01/learn-machine-learning-github-repositories.html";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool6')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.promptpal.net/?ref=aitools.fyi";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool7')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://fliki.ai/?via=aitools-fyi";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool8')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://kajabi.com/aicreatorhub";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                    child: Column(children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool5')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link = "https://krisp.ai/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool6')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.ocoya.com/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool7')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.copy.ai/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool8')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.beatoven.ai/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                    child: Column(children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool5')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://gptzero.me/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool6')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://openai-openai-detector.hf.space/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool7')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.adventureai.gg/#benefits";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
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
                                      child: Text(querySnapshot.docs[0]
                                          .get('tool8')
                                          .toString())),
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
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            text:
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                          )))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: OutlinedButton(
                                            onPressed: () async {
                                              const link =
                                                  "https://www.midjourney.com/home/";
                                              if (await canLaunch(link)) {
                                                await launch(link);
                                              } else {
                                                throw 'Could not launch $link';
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      240, 238, 237, 1),
                                              foregroundColor: Colors.black,
                                            ),
                                            child: const Text("Visit Website"),
                                          )))
                                ]))))
                      ])
                    ]);
              }
              return const Center(child: CircularProgressIndicator());
            }),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Column(children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(DevIcons.flutterPlain)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(DevIcons.firebasePlain)),
                            const Text("اللائحه صنعت من: عثمان عدي بمساعده"),
                          ]),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text("Copyright @ 2023"),
                          ),
                          SizedBox(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  IconButton(
                                      onPressed: () async {
                                        const linkedIn =
                                            "https://www.linkedin.com/in/codingwithadi/";
                                        if (await canLaunch(linkedIn)) {
                                          await launch(linkedIn);
                                        } else {
                                          throw 'Could not launch $linkedIn';
                                        }
                                      },
                                      icon: Icon(DevIcons.linkedinPlain)
                                      // icon: const Text(
                                      //   "LinkedIn",
                                      //   style: TextStyle(color: Colors.black),
                                      // ),
                                      ),
                                  IconButton(
                                      onPressed: () async {
                                        const githubUrl =
                                            "https://github.com/OthmanAdi";
                                        if (await canLaunch(githubUrl)) {
                                          await launch(githubUrl);
                                        } else {
                                          throw 'Could not launch $githubUrl';
                                        }
                                      },
                                      icon: Icon(DevIcons.githubOriginal)
                                      //   icon: const Text("Github",
                                      //       style: TextStyle(color: Colors.black)),
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
