import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => LogoFadeState();
}

class LogoFadeState extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
        Hero(
            tag: FlutterLogo,
            child: FlutterLogo(size:200)),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));}, child: Text('Navigate to Second Screen'),),

                ],
              ),
      ),
    );
  }
}



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
          tag: FlutterLogo,
          child: FlutterLogo(size: 200,)),
    );
  }
}

