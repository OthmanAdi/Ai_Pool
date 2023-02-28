import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class CoPilot extends StatelessWidget {
  const CoPilot({super.key, required this.documentID});
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
            style: GoogleFonts.alexandria(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          );
        }
        return const Text("");
      }),
    );
  }
}
