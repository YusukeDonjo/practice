

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
            'セカンド'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/cat.jpeg'),
            Text(name,
            style: TextStyle(fontSize: 50),),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red),),
              onPressed: (){
                //ボタンを押した時に呼ばれるコードを書く
                Navigator.pop(context);
              },
              child: Text('前の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
