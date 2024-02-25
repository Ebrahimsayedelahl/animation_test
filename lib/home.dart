import 'package:flutter/material.dart';
import 'package:untitled4/task1.dart';
import 'package:untitled4/task2.dart';
import 'package:untitled4/task3.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Task1()));}, child: Text('Navigate to Task1'),),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Task2()));}, child: Text('Navigate to Task2'),),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Task3()));}, child: Text('Navigate to Task3'),),
          ],
        ),
      ),
    );
  }
}