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
        ),
        body: ListView.builder(
          itemCount: 3 ,
          itemBuilder: (c, i){
            return ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('홍길동')
            );
          },
        ),
          bottomNavigationBar:BottomAppBar(
            child: BottomBar(),
          )
      )
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // 가로 설정
      padding: EdgeInsets.all(10),
      child: Row(
        children: const [
          Icon(
            Icons.account_circle,
            size: 40.0
          ),
          Text('홍길동')
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children :const [
          Icon(
            Icons.call,
          ),
          Icon(Icons.message),
          Icon(
            Icons.settings,
          ),
        ]
      ),
    );
  }
}




class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕')
    );
  }
}
