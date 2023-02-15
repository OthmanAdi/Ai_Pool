import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AppNames extends StatelessWidget {
  const AppNames({super.key, required this.documentID});
  final String documentID;

  @override
  Widget build(BuildContext context) {
    CollectionReference appNamesRef =
        FirebaseFirestore.instance.collection("ai_apps");
    return FutureBuilder<DocumentSnapshot>(
      future: appNamesRef.doc(documentID).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            data["CoPilot"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          );
        }
        return const Text("");
      }),
    );
  }
}
