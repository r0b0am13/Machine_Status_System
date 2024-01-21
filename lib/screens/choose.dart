
import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vending Machine Options')),
      body: Column(
        children: [
        ElevatedButton(child: Text('Go') ,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/status');
          }

        )
        ],
        


      ),
      
    );
    
  }
}