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
      // drawer: Drawer(), // 左ハンバーガーメニュー
      endDrawer: Drawer( // 右ハンバーガーメニュー
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            }
        ),
      ),
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text(title)
        ],
      ),
    );
  }
}
