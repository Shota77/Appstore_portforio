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
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('1行目'),
          Text('2行目aaaaaa'),
          Text('3行目bbbbb'),
          Text('4行目gggg'),
          Text('5行目bbbbbbbbb'),
          Text('6行目llll'),

        ],
      ),
    );
  }
}
