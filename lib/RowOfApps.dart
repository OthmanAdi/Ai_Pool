import 'dart:io';

import 'package:ai_newsx/CoPilot.dart';
import 'package:ai_newsx/Dale2.dart';
import 'package:ai_newsx/Chatgpt.dart';
import 'package:ai_newsx/Lensa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

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

  void initState() {
    super.initState();
    streamOfData = _dBRef.snapshots();
  }

  @override
  Widget build(BuildContext context) {
    _dBRef.get(); //cant listen to update and return future
    _dBRef.snapshots(); //can listen to updates and return a stream

    CollectionReference ref = FirebaseFirestore.instance.collection('ai_apps');

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
                  color: Color.fromRGBO(240, 238, 237, 1),
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
                return Row(children: <Widget>[
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
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
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
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
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
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
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
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
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
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                            240, 238, 237, 1),
                                        foregroundColor: Colors.black,
                                      ),
                                      child: const Text("Visit Website"),
                                    )))
                          ]))))
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06,
                              child: const Text("Flutter/Firebase"),
                            ),
                            Container(
                              // width: MediaQuery.of(context).size.width * 0.1,
                              child: Text("اللائحه صنعت من: عثمان عدي بمساعده"),
                            ),
                          ]),
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
                                    icon: Text("LinkedIn"),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Text("Github"),
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
