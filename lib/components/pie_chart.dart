import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/indicator.dart';

class PieChartComponent extends StatelessWidget {

  PieChartComponent({@required this.values});

  final List<double> values;

  @override
  Widget build(BuildContext context) {

    List<PieChartSectionData> showingSections() {
      return List.generate(
        4,
            (i) {
          //final isTouched = i == touchedIndex;
          //final double opacity = isTouched ? 1 : 0.6;
          final double opacity = 1;
          switch (i) {
            case 0:
              return PieChartSectionData(
                color: const Color(0xff0293ee).withOpacity(opacity),
                value: values[0],
                title: '${values[0]}',
                radius: 60,
                titleStyle: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xfffffffff)),
                titlePositionPercentageOffset: 0.55,
              );
            case 1:
              return PieChartSectionData(
                color: const Color(0xfff8b250).withOpacity(opacity),
                value: values[1],
                title: '${values[1]}',
                radius: 60,
                titleStyle: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xfffffffff)),
                titlePositionPercentageOffset: 0.55,
              );
            case 2:
              return PieChartSectionData(
                color: const Color(0xff845bef).withOpacity(opacity),
                value: values[2],
                title: '${values[2]}',
                radius: 60,
                titleStyle: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xfffffffff)),
                titlePositionPercentageOffset: 0.6,
              );
            case 3:
              return PieChartSectionData(
                color: const Color(0xff13d38e).withOpacity(opacity),
                value: values[3],
                title: '${values[3]}',
                radius: 60,
                titleStyle: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xfffffffff)),
                titlePositionPercentageOffset: 0.55,
              );
            default:
              return null;
          }
        },
      );
    }


    return Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Indicator(
                color: const Color(0xff0293ee),
                text: 'Food',
                isSquare: false,
                size: 10,
                textColor: Colors.grey,
              ),
              Indicator(
                color: const Color(0xfff8b250),
                text: 'Grocery',
                isSquare: false,
                size: 10,
                textColor: Colors.grey,
              ),
              Indicator(
                color: const Color(0xff845bef),
                text: 'RTA',
                isSquare: false,
                size: 10,
                textColor: Colors.grey,
              ),
              Indicator(
                color: const Color(0xff13d38e),
                text: 'Others',
                isSquare: false,
                size: 10,
                textColor: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 25),
          PieChart(
              PieChartData(
                  pieTouchData: PieTouchData(enabled: false),
                  startDegreeOffset: 180,
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 5,
                  sections: showingSections()
              )
          )
        ]
    );
  }
}



