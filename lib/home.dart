

import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
Expanded(
  child:   Padding(
  
    padding: const EdgeInsets.symmetric(vertical: 20),
  
    child:   Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(alignment: Alignment.bottomLeft,),
  
    
  
       Text(userInput.toString(), style: TextStyle(fontSize: 30, color: Colors.white),),
       SizedBox(height: 8,),
          Text(answer.toString(), style: TextStyle(fontSize: 30, color: Colors.white),),
    ],),
  
  ),
),

        Expanded(
          flex: 2,
          child: Column(children: [
        Row(children: [
             mybutton(title: 'AC',onpress: (){
              userInput = '';
              answer = '';
              setState(() {
                
              });
             },),
              mybutton(title: '+/-',onpress: (){
                    userInput += '+/-';
              setState(() {
                
              });
              },),
                          mybutton(title: '%',onpress: (){
                             userInput += '%';
              setState(() {
                
              });
                          },),
              mybutton(title: '/',color: Color(0xffffa00a),onpress: (){
                 userInput += '/';
              setState(() {
                
              });
              },),
        
          ],),
          Row(children: [
             mybutton(title: '7',onpress: (){
              userInput += '7';
              setState(() {
                
              });
             },),
              mybutton(title: '8',onpress: (){
                 userInput += '8';
              setState(() {
                
              });
              },),
                          mybutton(title: '9',onpress: (){
                             userInput += '9';
              setState(() {
                
              });
                          },),
              mybutton(title: '*',color: Color(0xffffa00a),onpress: (){
                 userInput += '*';
              setState(() {
                
              });
              },),
        
          ],),
          Row(children: [
             mybutton(title: '4',onpress: (){
               userInput += '4';
              setState(() {
                
              });
             },),
              mybutton(title: '5',onpress: (){
                 userInput += '5';
              setState(() {
                
              });
              },),
                          mybutton(title: '6',onpress: (){
                             userInput += '6';
              setState(() {
                
              });
                          },),
              mybutton(title: '-',color: Color(0xffffa00a),onpress: (){
                 userInput += '-';
              setState(() {
                
              });
              },),
        
          ],),
          Row(children: [
             mybutton(title: '1',onpress: (){
               userInput += '1';
              setState(() {
                
              });
             },),
              mybutton(title: '2',onpress: (){
                 userInput += '2';
              setState(() {
                
              });
              },),
                          mybutton(title: '3',onpress: (){
                             userInput += '3';
              setState(() {
                
              });
                          },),
              mybutton(title: '+',color: Color(0xffffa00a),onpress: (){
                 userInput += '+';
              setState(() {
                
              });
              },),
        
          ],),
          Row(children: [
             mybutton(title: '0',onpress: (){
               userInput += '0';
              setState(() {
                
              });
             },),
              mybutton(title: '.',onpress: (){
                 userInput += '.';
              setState(() {
                
              });
              },),
                          mybutton(title: 'DEL',onpress: (){
              userInput = userInput.substring(0 , userInput.length -1);
              setState(() {
                
              });
                          },),
              mybutton(title: '=',color: Color(0xffffa00a),onpress: (){
                equalPress();
                setState(() {
                  
                });
              },),
        
          ],),
        
          ],),
        ),

        
       
      ],),
      )),
    );
  }
  void equalPress(){
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel= ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}


