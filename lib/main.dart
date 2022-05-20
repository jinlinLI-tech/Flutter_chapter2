import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          child: Column(
            children: [
              Text(
                "Flutter中的包依赖管理",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const Text("仿写的第二个知识点,随机生成字符串,颜色为红色",
                  style: TextStyle(fontSize: 20)),
              RandomWordsWidget(),
            ],
          )),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //生成随机字符串
    final wordPair = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(wordPair.toString(),
          style: TextStyle(fontSize: 20, color: Colors.red)),
    );
  }
}
