
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
      appBar: AppBar(leading:BackButton(color: Colors.white,),
      title:Text('Vending Machine Options')),
      body: Column(
        children: [
        ElevatedButton(child: Text('Go') ,
          onPressed: () {
            Navigator.pushNamed(context, '/status');
          }

        )
        ],
        


      ),
      
    );
    
  }
}