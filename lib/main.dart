import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Students",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 120,
              child: Card(
                shadowColor: Colors.blue,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text('Name: ',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                                  Text('Ahmad Tamimi',
                                    style: TextStyle(letterSpacing: 2.0,fontSize: 18.0),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Text('id: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                                  Text('03/3225',style: TextStyle(letterSpacing: 2.0,fontSize: 20.0),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 35.0,
                        backgroundImage: AssetImage('assets/anonymous.jpg'),
                      )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('tap to show details'),
                        Icon(Icons.play_arrow),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}


