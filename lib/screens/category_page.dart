import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Manage Categories',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        backgroundColor: const Color(0xff1d1e33).withOpacity(0.1),
        body: Padding(
          padding: const EdgeInsets.only(top:150.0),
          child: Column(

            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("Akiba Dori",
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFBF5F3))),
              ),
              const SizedBox(height: 25),
              Container(
                width: 250,
                child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                      child: Text("Food",

                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff4dccbd))),
                    )),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0),
                  //boxShadow: [BoxShadow(color: Color(0xFFFFFFFF).withAlpha(50), spreadRadius: 3.2, blurRadius: 4, offset: Offset(0,3))]
                ),
              ),
              Container(
                width: 250,
                child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                      child: Text("RTA",

                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff4dccbd))),
                    )),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0),
                  //boxShadow: [BoxShadow(color: Color(0xFFFFFFFF).withAlpha(50), spreadRadius: 3.2, blurRadius: 4, offset: Offset(0,3))]
                ),
              ),

            ],
          ),
        ));
  }
}
