import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String ans = "0";
  String cal = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '$cal',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(height: 12.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      cal="0";
                      ans="0";
                    });
                  },
                  child: Text(
                    'C',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.removeLast();
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Icon(
                    Icons.backspace,
                    color: Colors.orange[900],
                    size: 30.0,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('%');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Icon(
                    Icons.percent,
                    color: Colors.orange[900],
                    size: 30.0,
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      List<String> charList1 = ans.split('');
                      charList.add('÷');
                      charList1.add('/');
                      cal = charList.join('');
                      ans = charList1.join('');
                      // delete(charList,String);
                      // delete(charList1,String);
                    });
                  },
                  child: Text(
                      '÷',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('7');
                      cal = charList.join('');
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('8');
                      cal = charList.join('');
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('9');
                      cal = charList.join('');
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '9',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      List<String> charList1 = ans.split('');
                      charList.add('x');
                      charList1.add('*');
                      cal = charList.join('');
                      ans = charList1.join('');
                      // delete(charList,String);
                      // delete(charList1,String);
                    });
                  },
                  child: Text(
                    '×',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('4');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('5');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('6');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('-');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('1');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('2');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('3');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('+');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('.');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add('0');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      List<String> charList = cal.split('');
                      charList.add(',');
                      cal = charList.join('');
                      ans = cal;
                      // delete(charList,String);
                    });
                  },
                  child: Text(
                    ',',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                      setState(() {
                        cal = evaluateExpression(ans);
                      });
                  },
                  child: Text(
                    '=',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String evaluateExpression(String exp) {
  String expressionString = exp;

  // Create an Expression object from the input string
  Expression expression = Parser().parse(expressionString);

  // Create a Context to evaluate the expression
  ContextModel contextModel = ContextModel();

  try {
    // Evaluate the expression
    double result = expression.evaluate(EvaluationType.REAL, contextModel);
    return result.toString();
  } catch (e) {
    print('Error: ${e.toString()}');
    return "error";
  }
}
