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
