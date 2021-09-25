import 'package:flutter/material.dart';

class HomeSetState extends StatefulWidget {
  HomeSetState({Key? key}) : super(key: key);

  @override
  _HomeSetStateState createState() => _HomeSetStateState();
}

class _HomeSetStateState extends State<HomeSetState> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Set State:',
            ),
            Text(
              '$value',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
        onPressed: (){
          setState(() {
            value += 2;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: (){
          setState(() {
            value -= 1;
          });
        },
        tooltip: 'Decrement',
        child: Icon(Icons.remove)
      ),
        ],
      )
    );
  }
}
