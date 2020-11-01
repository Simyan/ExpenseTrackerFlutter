import 'package:expense_tracker/components/pie_chart.dart';
import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {

  CustomCard({@required this.contentType , this.widgetList, this.value, this.label, this.pieValues}){
    this.widgetList = this.contentType == 'custom' ? this.widgetList : new List<Widget>();
  }

  final String value;
  final String label;
  final String contentType;
  final List<double> pieValues;
  List<Widget> widgetList;

  List<Widget> selectContentType(contentType){

    switch(contentType){
      case 'info': this.widgetList.addAll(<Widget>[
        Text(value, style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700, color: const Color(0xffFBF5F3))),
        Text(label, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: const Color(0xff4dccbd)))
      ]);
      return this.widgetList;

      case 'pie': this.widgetList.add(PieChartComponent(values: pieValues));
      return this.widgetList;

      case 'custom': return this.widgetList;

      default: return this.widgetList;
    }
  }

  @override

  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: selectContentType(contentType),
          ),
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10.0),
            //boxShadow: [BoxShadow(color: Color(0xFFFFFFFF).withAlpha(50), spreadRadius: 3.2, blurRadius: 4, offset: Offset(0,3))]
            ),
    );
  }
}
