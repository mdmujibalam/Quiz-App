import 'package:flutter/material.dart';
import 'package:section_second/data/questions.dart';
import 'package:section_second/widgets/result_summary.dart';

class ResultScreen extends StatelessWidget{
final List<String> selectedAnswers;


const ResultScreen(this.selectedAnswers,{super.key});

List<Map<String,Object>> getSummaryData(){
final List<Map<String,Object>>summary=[];

for(var i=0;i<selectedAnswers.length;i++){
  summary.add(
    {
      'question_index': i,
      'question': questions[i].text,
      'correct_answer': questions[i].answers[0],
      'user_answer': selectedAnswers[i]
    }
  );
}

return summary;
}


  @override
  Widget build(BuildContext context) {
    return Container(
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
           const  Text('You have answered X questions correctly out of Y questions'),

           const SizedBox(height: 30,),

           ResultSummary(getSummaryData()),

           const SizedBox(height: 30,),

           TextButton(onPressed: (){},
            child: const Text("Restart Quiz")
            )
          ]
        ),
    );
  }

}