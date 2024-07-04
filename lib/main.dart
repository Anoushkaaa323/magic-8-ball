import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
     const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(

        title:const Center(child: Text("Ask Me Anything",style: TextStyle(color: Colors.white),)) ,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Ball(),

    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});


  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int answerNumber=1;

  void changeAnswer(){
    answerNumber=Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: (){
          setState(() {
            changeAnswer();

          });
        },
            child: Image(image: AssetImage('images/ball$answerNumber.png')))

      ],

    );
  }
}
