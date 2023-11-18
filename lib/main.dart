import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'Flutter大学',
        style: TextStyle(
            fontWeight: FontWeight.bold, // 文字を太く
            fontSize: 16,
            color: Colors.blueGrey // 文字サイズを変更
            // プロパティは他にもいろいろあります。
            // 自分で調べてみよう。
            ),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
            TweetTitle(),
          ],
        ),
      ),
    ));
  }
}

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 上揃えにする
        children: [
          // ここにユーザーアイコンを追加する
          CircleAvatar(
            backgroundImage:
                NetworkImage('https://www.irasutoya.com/2021/01/luffy.html'),
          ),
          SizedBox(width: 8), // width プロパティに数字を与えて横幅を決める。

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('kiwi_chan'),
                SizedBox(width: 8), // width プロパティに数字を与えて横幅を決める。
                Text('2023/11/18')
              ]),
              SizedBox(height: 4), // hight プロパティに数字を与えて高さを決める。
              Text('いいね👍'),
              IconList(),
            ],
          ),
        ],
      ),
    );
  }
}

class IconList extends StatelessWidget {
  const IconList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {}, // ボタンを押したときに実行する内容を書けます。今回は何も実行しません。
          icon: Icon(Icons
              .chat_bubble_outline), // Icon も Widget のひとつ。Icons. と打つと候補がたくさんでるので好きなアイコンに変更してみよう。
        ),
        IconButton(
          onPressed: () {}, // ボタンを押したときに実行する内容を書けます。今回は何も実行しません。
          icon: Icon(Icons
              .share_outlined), // Icon も Widget のひとつ。Icons. と打つと候補がたくさんでるので好きなアイコンに変更してみよう。
        ),
        IconButton(
          onPressed: () {}, // ボタンを押したときに実行する内容を書けます。今回は何も実行しません。
          icon: Icon(Icons
              .favorite_border), // Icon も Widget のひとつ。Icons. と打つと候補がたくさんでるので好きなアイコンに変更してみよう。
        ),
        IconButton(
          onPressed: () {}, // ボタンを押したときに実行する内容を書けます。今回は何も実行しません。
          icon: Icon(Icons
              .downloading_outlined), // Icon も Widget のひとつ。Icons. と打つと候補がたくさんでるので好きなアイコンに変更してみよう。
        ),
      ],
    );
  }
}
