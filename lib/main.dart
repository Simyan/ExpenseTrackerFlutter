import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: const ListTile(
                      title: Text('500 AED', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700)),
                      subtitle: Text('Food', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: const ListTile(
                      title: Text('241 AED', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700)),
                      subtitle: Text('Grocery', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: const ListTile(
                      title: Text('850 AED', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700)),
                      subtitle: Text('Total', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
