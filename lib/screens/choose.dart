import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String dropdown = locs.first;
const List<String> locs = [
  "Location_1",
  "Location_2",
  "Location_3",
  "Location_4",
  "Location_5"
];

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Vending Machine')),
        body: SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Select the Vending Machine",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  DropdownButton<String>(
                    value: dropdown,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdown = value!;
                      });
                    },
                    items: locs.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/status',
                          arguments: dropdown,
                        );
                      },
                      child: Text("Check Status"))
                ]),
          ),
        ));
  }
}
