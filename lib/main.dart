import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: 3, 
            itemBuilder: (BuildContext context, int index) {
              List<String> cardTexts = [
                'Vegetable Pizza',
                'pizza with carrot',
                'pizza with fruits'
              ];
              String imageUrl =
                  'https://th.bing.com/th/id/OIP.cJB_WtEyG8pXhrFToFi9dgAAAA?pid=ImgDet&rs=1';

              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      imageUrl,
                      width: 100.0,
                      height: 100.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      cardTexts[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}
