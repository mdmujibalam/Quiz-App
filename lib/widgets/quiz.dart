import 'package:flutter/material.dart';
import 'package:section_second/widgets/start_screen.dart';
import 'package:section_second/widgets/question_screen.dart';
import 'package:section_second/data/questions.dart';
import 'package:section_second/widgets/result_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {

    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {
 Widget?currentScreen;
 List<String> selectedAnswer=[];

 @override
 void initState() {
    currentScreen= StartScreen(switchScreen);
     super.initState();
}

void chooseAnswer(String answer){
  selectedAnswer.add(answer);
  
  if(selectedAnswer.length == questions.length){
    setState(() {
      selectedAnswer=[];
    // currentScreen= ResultScreen(selectedAnswer);
    currentScreen=StartScreen(switchScreen);
    });
    
  }

}

void switchScreen() {
 setState((){
  currentScreen= QuestionScreen(chooseAnswer);
 });
}




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: currentScreen,
      debugShowCheckedModeBanner: false
    );
    
  }

}