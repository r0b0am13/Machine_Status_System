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
        body: SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
        CircleAvatar(radius: 75, backgroundImage: AssetImage('assets/vendilog.jpg'),),
                  Text(
                    "Select the Vending Machine",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  DropdownButton<String>(
                    value: dropdown,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Color.fromARGB(255, 255, 38, 0)),
                    underline: Container(
                      height: 2,
                      color: Color.fromARGB(255, 228, 214, 12),
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
                        child: Text(value, style: TextStyle(fontSize: 20),),
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
                      child: Text("Check Status", style: TextStyle(color: Colors.green, fontSize: 17),))
                ]),
          ),
        ));
  }
}
