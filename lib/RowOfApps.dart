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

  final CollectionReference _dBRef =
      FirebaseFirestore.instance.collection('ai_apps');

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
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(195, 0, 0, 0), //! Main BG Colors
            child: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: Container(
                  color: Colors.white70,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
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
                    if (snapshot.connectionState == ConnectionState.active) {
                      QuerySnapshot querySnapshot = snapshot.data;
                      return Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
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
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/chat.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('chatgptDescription')
                                                      .toString(),
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
                                                    if (await canLaunch(
                                                        gptLink)) {
                                                      await launch(gptLink);
                                                    } else {
                                                      throw 'Could not launch $gptLink';
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/CoPilot.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('copilot')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Lensa.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Lensa')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Dale2.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Dale')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('kdnuggets')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/LearnML.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('MLLEARN')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('promptpal')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/bestAiPromptes.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('PromptPal')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('fliki')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Fliki.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('FlikiDescription')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('kajabi')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/CreatorHub.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Kjabi')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('krisp')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Krisp.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Krisp')
                                                      .toString(),
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
                                                        "https://krisp.ai/";
                                                    if (await canLaunch(link)) {
                                                      await launch(link);
                                                    } else {
                                                      throw 'Could not launch $link';
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('ocoya')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Ocoya.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Ocoya')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('copy')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/CopyAi.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Copy')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('beatoven')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Beatoven.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Beatover')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('gptzero')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/GptZero.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('GptZero')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('OpenAiDetector')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/OutPutDetector.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Detector')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('adventureai')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/AdventureAI.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('Adventure')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
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
                                                .get('midjourney')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/MidJourney.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
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
                                                  text: querySnapshot.docs[1]
                                                      .get('MidJourney')
                                                      .toString(),
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
                                                )))
                                      ]))))
                            ]),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Card(
                                          child: Column(children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(querySnapshot.docs[0]
                                                .get('civitai')
                                                .toString())),
                                        const SizedBox(
                                          height: 150,
                                          child: Image(
                                            image: AssetImage(
                                                "../assets/thumbnails/Civitai.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Divider(
                                          color:
                                              Color.fromARGB(37, 249, 250, 248),
                                          indent: 30,
                                          endIndent: 30,
                                          thickness: 0.8,
                                        ),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 4,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: SizedBox(
                                                    child: RichText(
                                                        text: TextSpan(
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall,
                                                  text: querySnapshot.docs[1]
                                                      .get('Civit')
                                                      .toString(),
                                                ))))),
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
                                                        "https://civitai.com/";
                                                    if (await canLaunch(link)) {
                                                      await launch(link);
                                                    } else {
                                                      throw 'Could not launch $link';
                                                    }
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromRGBO(
                                                            240, 238, 237, 1),
                                                    foregroundColor:
                                                        Colors.black,
                                                  ),
                                                  child: const Text("أستكشاف"),
                                                )))
                                      ]))),
                                ])
                          ]);
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
              // ! FOOTER OF APP
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        width: double.infinity,
                        // alignment: Alignment.topCenter,
                        child: Column(children: <Widget>[
                          Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: double.infinity,
                              color: Colors.blue,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Row(children: [
                                          IconButton(
                                              tooltip: "Flutter",
                                              hoverColor:
                                                  Colors.lightBlueAccent,
                                              onPressed: () {},
                                              icon: const Icon(
                                                  DevIcons.flutterPlain)),
                                          IconButton(
                                              tooltip: "Firebase",
                                              hoverColor:
                                                  Colors.deepOrangeAccent,
                                              onPressed: () {},
                                              icon: const Icon(
                                                  DevIcons.firebasePlain)),
                                          Text(
                                            "اللائحه صنعت من: عثمان عدي بمساعده",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.02,
                                            ),
                                          ),
                                        ]),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          child: const Text("Copyright @ 2023"),
                                        ),
                                        SizedBox(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                              IconButton(
                                                  tooltip: "My LinkedIn",
                                                  onPressed: () async {
                                                    const linkedIn =
                                                        "https://www.linkedin.com/in/codingwithadi/";
                                                    if (await canLaunch(
                                                        linkedIn)) {
                                                      await launch(linkedIn);
                                                    } else {
                                                      throw 'Could not launch $linkedIn';
                                                    }
                                                  },
                                                  icon: const Icon(
                                                      DevIcons.linkedinPlain)
                                                  // icon: const Text(
                                                  //   "LinkedIn",
                                                  //   style: TextStyle(color: Colors.black),
                                                  // ),
                                                  ),
                                              IconButton(
                                                  tooltip: "My Github",
                                                  onPressed: () async {
                                                    const githubUrl =
                                                        "https://github.com/OthmanAdi";
                                                    if (await canLaunch(
                                                        githubUrl)) {
                                                      await launch(githubUrl);
                                                    } else {
                                                      throw 'Could not launch $githubUrl';
                                                    }
                                                  },
                                                  icon: const Icon(
                                                      DevIcons.githubOriginal)
                                                  //   icon: const Text("Github",
                                                  //       style: TextStyle(color: Colors.black)),
                                                  )
                                            ]))
                                      ])))
                        ])))
              ])
            ]))));
  }
}
