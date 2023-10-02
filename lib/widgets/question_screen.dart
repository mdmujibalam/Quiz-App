import 'package:flutter/material.dart';
import 'package:section_second/Widgets/answer_button.dart';
import 'package:section_second/data/questions.dart';

class QuestionScreen extends StatefulWidget{

  final void Function(String answer) onSelectAnswer;

  const QuestionScreen(this.onSelectAnswer,{super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }

}

class _QuestionScreenState extends State<QuestionScreen>{

  int currentScreenIndex=0;

  void answerQuestion(String selectedAnswer){
   widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentScreenIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
   final currentQuestion=questions[currentScreenIndex];

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 112, 14, 129),Color.fromARGB(255, 204, 59, 230)],
            begin: Alignment.topRight,
            end: Alignment.bottomRight
          ),
        ),
       
        child:   Center(
          child: Container(
             margin:const  EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                Text(currentQuestion.text,
                style: const TextStyle(color: Colors.white, fontSize: 20, decoration: TextDecoration.none),
                textAlign: TextAlign.center,
                ),
          
                const SizedBox(height:20),
          
                ...currentQuestion.getShuffledAnswers().map((answer){
                   return AnswerButton(answer,(){
                     answerQuestion(answer);
                   });
                })
          
                // AnswerButton('Hi',() {}),
                // AnswerButton('Hello',() {}),
                // AnswerButton('Here',() {}),
                // AnswerButton('Hey',() {}),
          
                
                
              ]
            ),
          ),
        )
    );
  }

}