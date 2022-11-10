import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('앱임')
        ),
        body: Container(
          height: 150,
            // margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('assets/images/gyus.jpg',width: 150),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("박규성"),
                    Text("박규성"),
                    Text("박규성"),
                    Text("박규성"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.favorite),
                        Text('3')
                      ],
                    ),
                  ],
                ),
              )
            ],
        ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [ Icon(Icons.star), Icon(Icons.star), Icon(Icons.star) ]
            ),
          ),
        ),
      )
    );

  }
}

