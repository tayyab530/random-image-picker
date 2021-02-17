import 'package:flutter/material.dart';
import 'package:http_practice/widgets/image_list.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {

  createState() => MyHomePageState();

}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 1,index = 0;
  List<String> src = [];

  void _incrementCounter()  {
    

    setState(() {
      src.add('https://picsum.photos/500?random=$_counter');
      _counter++;
      index++;
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('App'),
      ),
      body: Container(
        child: ImageList(src),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    )
    );
  }
}
