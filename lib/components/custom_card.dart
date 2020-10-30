import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {

  CustomCard({@required this.value, @required this.label});

  final String value;
  final String label;

  @override

  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(value, style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700, color: Colors.white)),
              Text(label, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white))
            ],
          ),
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0))
    );
  }
}
