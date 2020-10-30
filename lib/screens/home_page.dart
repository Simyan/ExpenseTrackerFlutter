import 'package:flutter/material.dart';
import 'package:expense_tracker/components/custom_card.dart';
import 'package:expense_tracker/components/pie_chart.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //Sim: Fields in a widget subclass are always marked final
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      backgroundColor: const Color(0xff1d1e33).withOpacity(0.1),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomCard(value: '999 AED', label: 'Food',),
              CustomCard(value: '567 AED', label: 'Grocery',),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        PieChartComponent(values: [25,10,40,25])
                      ],
                    ),
                  ),
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0))
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}