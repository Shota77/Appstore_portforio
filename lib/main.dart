import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget MainCard (image, title, big_text, small_text) {
  return Container(
      margin: EdgeInsets.only(top: 16),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              image,
              width: 350,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 16),
            child: Text(
              big_text[0],
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 336, left: 16),
            child: Text(
              small_text[0],
              style: TextStyle(
                fontSize: 16,
                color: small_text[1],
              ),
            ),
          )
        ],
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appstore Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //　全体のバックグランドカラー
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // 幅が狭い分中央寄せになるので、幅をMaxにする
              width: 375,
              margin: EdgeInsets.only(top: 64, left: 20),
              child: Text(
                'WEDNESDAY, APLIL 15',
                style: TextStyle(
                  color: Colors.white10,
                  fontSize: 13,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 315,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'images/city.jpg',
                        width: 350,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 16),
                      child: Text(
                        "HOW TO",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 16),
                      child: Text(
                        "忙しい朝の\n情報収集術",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 336, left: 16),
                      child: Text(
                        "天気や鉄道の運行状況など\n家を出るまでに効率よく情報収集。",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
            ),
            MainCard(
                'images/training.jpg',
                "STAY HOME",
                ["筋力トレーニングに\nチェンジ", "black"],
                ["運動不足を解消しましょう。\n道具は必要ありません!", Colors.black]
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
        ],
      )
    );
  }
}
