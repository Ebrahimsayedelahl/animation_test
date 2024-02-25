import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});
  @override
  State<Task1> createState() => LogoFadeState();
}
class LogoFadeState extends State<Task1> {
  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            AnimatedOpacity(
              opacity: opacityLevel,
              curve: Curves.decelerate,
              duration: const Duration(seconds:2),
              child: const FlutterLogo(size: 200,),

            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 250,
              child: ElevatedButton(

                onPressed: _changeOpacity,
                child: const Text('Fade Logo',style: TextStyle(fontSize: 25),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}