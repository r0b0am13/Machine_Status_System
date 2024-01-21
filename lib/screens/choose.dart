import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void getMachineNames() async {
  try {
    // Get a reference to the 'machines' collection
    CollectionReference machinesCollection =
        FirebaseFirestore.instance.collection('Vending_Machines');

    // Get the documents in the 'machines' collection
    QuerySnapshot machinesSnapshot =
        await machinesCollection.doc("Location_1").collection("items").get();

    // Iterate through the documents and print their names
    machinesSnapshot.docs.forEach((DocumentSnapshot document) {
      print('Machine Name: ${document.id}');
    });
  } catch (e) {
    print('Error getting machine names: $e');
  }
}

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  void initState() {
    super.initState();
    print("Hello");
    getMachineNames();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Vending Machine')),
        body: Column(
          children: [
            Text("Select the Vending Machine"),
          ],
        ));
  }
}
