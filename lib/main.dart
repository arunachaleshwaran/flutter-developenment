import 'package:flutter/material.dart';

// Using Material Component
void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('MyButtion was tapped');
      },
      highlightColor:Colors.amber,
      child: Container(
        height: 36,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.lightGreen[500]),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
