import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  final void Function() startQuiz;

  const StartScreen(this.startQuiz,{super.key});

  


  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     
      body:  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 112, 14, 129),Color.fromARGB(255, 204, 59, 230)],
            begin: Alignment.topRight,
            end: Alignment.bottomRight
          ),
        ),

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/quiz-logo.png",
             width: 200,
             color: const Color.fromARGB(214, 245, 238, 238)),
            const SizedBox(
              height: 50,
            ),
            const  Center(
              child:  Text("Welcome to Quiz App", style: TextStyle(color: Colors.white, fontSize: 20),)),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Start Quiz"),
              
              ),  
          ],
        )
      ),
      );
  }

  

  


}