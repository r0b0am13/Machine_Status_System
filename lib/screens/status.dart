
import 'package:flutter/material.dart';



class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(leading:BackButton(color: Colors.white,),
    title: Text('Vending Machine Status', style: TextStyle(color: Colors.white)), 
                  backgroundColor: Colors.grey[900],
                  centerTitle: true,),
    
    body: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 180,
          child: Card(
             // Define the shape of the card
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
            ),
            // Define how the card's content should be clipped
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // Define the child widget of the card
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add padding around the row widget
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Add an image widget to display an image
                  Image.asset(
                    'assets/snickers.jpg',
                    height: 140,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  // Add some spacing between the image and the text
                  Container(width: 40),
                  // Add an expanded widget to take up the remaining horizontal space
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Add some spacing between the top of the card and the title
                        Container(height: 5),
                        // Add a title widget
                        Text(
                          "Slot 01",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          // style: MyTextSample.title(context)!.copyWith(
                          //   color: MyColorsSample.grey_80,
                          // ),
                        ),
                        // Add some spacing between the title and the subtitle
                        Container(height: 5),
                        // Add a subtitle widget
                        Text(
                          "Snickers Bar 100gm",
                          // style: MyTextSample.body1(context)!.copyWith(
                          //   color: Colors.grey[500],
                          // ),
                        ),
                        // Add some spacing between the subtitle and the text
                        Container(height: 5),
                        // Add a text widget to display some text
                        Text('Quantity: 10'
                          // MyStringsSample.card_text,
                          // maxLines: 2,
                          // style: MyTextSample.subhead(context)!.copyWith(
                          //   color: Colors.grey[700],
                          ),
                        Container(height: 5),
                        // Add a subtitle widget
                        Text(
                          "Price: Rs. 40",
                          // style: MyTextSample.body1(context)!.copyWith(
                          //   color: Colors.grey[500],
                          // ),
                        ),
                        Container(height: 5),
                        // Add a text widget to display some text
                        Text('Status: Working'
                          // MyStringsSample.card_text,
                          // maxLines: 2,
                          // style: MyTextSample.subhead(context)!.copyWith(
                          //   color: Colors.grey[700],
                          ),
                        //),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          ),
          ),
        ),
      ],
    ) 

    
    
    
    
    
    
    
    );

  }
}
