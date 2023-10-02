import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

const AnswerButton(this.answerText,this.onTap, {super.key});

final String answerText;
final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsetsDirectional.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 75, 9, 87),
        foregroundColor: const Color.fromARGB(255, 247, 238, 238),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
      ),
      
      child: Text(answerText)
      );
  }

}