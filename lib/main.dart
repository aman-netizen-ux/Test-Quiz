import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

/* this underscore used before the nbame of the class is to make the class 
from public to private to enhance the security. We did this to all the variables and functions
of the MyAppState class to make all them as private.*/

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    /* set state is used to re-render the UI, not the ui of the entire App instead what does in 
    the end is it calls build again of this widget where you call set state of this widget*/

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'QuestionText': 'What\'s your favourite color?',
        'Answers': ['Black', 'Red', 'Orange', 'White'],
      },
      {
        'QuestionText': 'What\'s your favourite animal?',
        'Answers': ['Koala', 'Dog', 'Cat', 'Panda'],
      },
      {
        'QuestionText': 'Who\'s your favourite instructor?',
        'Answers': ['Kunal', 'Striver', 'Apna College', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        //
        /* column is used because body allows only one widget inside him
        so that we can add more widgets inside it*/
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionText']?.toString() ?? '' ,
          ),
          //ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1 ')),
          // Answer(_answerQuestion),

          //these three dots take alist and pull all the values out of it and add it to the sorrounding list as an individual value
          ...(questions[_questionIndex]['answers'] as List<String ?. >  )
          .map((answer) {
            return Answer(_answerQuestion,answer);
          }).toList()

          /* in button 2, anonymous function is used to print. We use these kind of functions
          when we don't want to define it up there or I don't want to call that function from
          anywhere else. It has no name*/

          
          /*ElevatedButton(
              onPressed: () => print("Answer 2 chosenr"),
              child: Text("Answer 2 ")),
          ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 3")),*/
        ]),
      ),
    );
  }
}
