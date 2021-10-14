import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  bool _isfollow= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  counter++;
                  print(counter) ;
                });
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)
                  ),
                  child: Text("+")),
              Text("$counter" ,
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              ),

              ElevatedButton(onPressed: (){
                setState(() {
                  counter--;
                  print(counter);
                });
              },
                  child: Text("-")),
              ElevatedButton(onPressed: (){
                setState(() {
                  counter = 0;

                  print(counter);
                });
              }, child: 

              Text("restart")),

              // OutlinedButton.icon(onPressed: (){
              //   setState(() {
              //     _isfollow = !_isfollow;
              //   });
              // },
              //     icon: _isfollow ? Icon(Icons.follow_the_signs):Icon(Icons.not_accessible),
              //     label: _isfollow ? Text("Follow"): Text("Un follow")
              // )



            ],
          ),
        ),
      ),
    );
  }
}
