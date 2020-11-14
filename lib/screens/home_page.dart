import 'package:flutter/material.dart';
import 'package:expense_tracker/components/custom_card.dart';
import 'package:expense_tracker/screens/category_page.dart';
import 'package:expense_tracker/DAL/sms_reader.dart';
import 'package:expense_tracker/BLL/sms_parser.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //Sim: Fields in a widget subclass are always marked final
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    readTransactions();

  }

  void readTransactions() async {
    SMSReader smsReader = new SMSReader();
    SMSParser smsParser = new SMSParser();
    var result = await smsReader.readSMS();
    print(result);
    smsParser.parseTransactions(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            tooltip: 'Manage Categories',
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => CategoryPage( title: widget.title,)));
            },
          )
        ],
      ),
      backgroundColor: const Color(0xff1d1e33).withOpacity(0.1),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomCard(contentType: 'info', value: '999 AED', label: 'Food',),
              CustomCard(contentType: 'info', value: '567 AED', label: 'Grocery',),
              CustomCard(contentType: 'pie', pieValues: [25,10,40,25]),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}