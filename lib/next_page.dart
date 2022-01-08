import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  // 前のpageから送られてくる情報の受け皿としての変数を宣言
  final String title;

  // constructor
  // 送られてきた情報を上の変数に格納する
  NextPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text(title)
        ],
      ),
    );
  }
}
