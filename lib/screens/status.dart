import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    String location = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text('Vending Machine Status',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Vending_Machines')
              .doc(location)
              .collection('items')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              ));
            } else {
              final docs = snapshot.data!.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    child: Card(
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
                                  'assets/Images/snickers.jpg',
                                  height: 140,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 40),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Add some spacing between the top of the card and the title
                                      Container(height: 5),
                                      // Add a title widget
                                      Text(
                                        docs[index].id,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        // style: MyTextSample.title(context)!.copyWith(
                                        //   color: MyColorsSample.grey_80,
                                        // ),
                                      ),
                                      // Add some spacing between the title and the subtitle
                                      Container(height: 5),
                                      // Add a subtitle widget
                                      Text(
                                        docs[index]["name"],
                                        // style: MyTextSample.body1(context)!.copyWith(
                                        //   color: Colors.grey[500],
                                        // ),
                                      ),
                                      // Add some spacing between the subtitle and the text
                                      Container(height: 5),
                                      // Add a text widget to display some text
                                      Text('Quantity : ' +
                                              docs[index]["qty"].toString()
                                          // MyStringsSample.card_text,
                                          // maxLines: 2,
                                          // style: MyTextSample.subhead(context)!.copyWith(
                                          //   color: Colors.grey[700],
                                          ),
                                      Container(height: 5),
                                      // Add a subtitle widget
                                      Text(
                                        "Price : Rs. " +
                                            docs[index]["price"].toString(),
                                        // style: MyTextSample.body1(context)!.copyWith(
                                        //   color: Colors.grey[500],
                                        // ),
                                      ),
                                      Container(height: 5),
                                      // Add a text widget to display some text
                                      Text('Status : ' +
                                              (docs[index]["status"]
                                                  ? "Working"
                                                  : "Not Working")
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
                  );
                },
              );
            }
          },
        ));
  }
}
