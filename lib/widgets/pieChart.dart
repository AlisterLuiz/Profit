import 'package:Profit/utilities/index.dart';

class PieChartDashboard extends StatefulWidget {
  @override
  _PieChartDashboardState createState() => _PieChartDashboardState();
}

class _PieChartDashboardState extends State<PieChartDashboard> {
  final int total = 100;

  int touchedIndex;

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 18 : 12;
      final double radius = isTouched ? 70 : 40;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.orange,
            value: getPercent(20, total),
            title: '${getPercent(20, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xff21C0E3),
            value: getPercent(30, total),
            title: '${getPercent(40, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: getPercent(35, total),
            title: '${getPercent(35, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.black,
            value: getPercent(15, total),
            title: '${getPercent(15, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }

  double getPercent(double val, int total) {
    return ((val / total) * 100).roundToDouble();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 271,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                  setState(() {
                    if (pieTouchResponse.touchInput is FlLongPressEnd ||
                        pieTouchResponse.touchInput is FlPanEnd) {
                      touchedIndex = -1;
                    } else {
                      touchedIndex = pieTouchResponse.touchedSectionIndex;
                    }
                  });
                }),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                sections: showingSections(),
              ),
            ),
          ),
          // sizedBox(28, 0),
          // Column(
          //   children: [
          //     Text(
          //       'Total: $total',
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     sizedBox(16, 0),
          //     Row(
          //       mainAxisSize: MainAxisSize.max,
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: <Widget>[
          //         Indicator(
          //           color: Colors.orange,
          //           text: 'On Going\n0',
          //           isSquare: true,
          //           size: screenWidth(context) * 0.01,
          //         ),
          //         Indicator(
          //           color: Colors.red,
          //           text: 'Cancelled\n25',
          //           isSquare: true,
          //           size: screenWidth(context) * 0.01,
          //         ),
          //         Indicator(
          //           color: Colors.green,
          //           text: 'Completed\n30',
          //           isSquare: true,
          //           size: screenWidth(context) * 0.01,
          //         ),
          //       ],
          //     ),
          //     sizedBox(0, 16),
          //   ],
          // ),
        ],
      ),
    );
  }
}
