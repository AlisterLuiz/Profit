import 'package:Profit/utilities/index.dart';

class PieChartDashboard extends StatefulWidget {
  @override
  _PieChartDashboardState createState() => _PieChartDashboardState();
}

class _PieChartDashboardState extends State<PieChartDashboard> {
  final int total = 55;

  int touchedIndex;

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 80 : 50;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.orange,
            value: getPercent(0, total),
            title: '${getPercent(0, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.red,
            value: getPercent(25, total),
            title: '${getPercent(25, total).toString()} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: getPercent(30, total),
            title: '${getPercent(30, total).toString()} %',
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
            height: 260,
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
                  centerSpaceRadius: 60,
                  sections: showingSections()),
            ),
          ),
          // sizedBox(28, 0),
          Column(
            children: [
              Text(
                'Total: $total',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              sizedBox(16, 0),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Indicator(
                    color: Colors.orange,
                    text: 'On Going\n0',
                    isSquare: true,
                    size: screenWidth(context) * 0.01,
                  ),
                  Indicator(
                    color: Colors.red,
                    text: 'Cancelled\n25',
                    isSquare: true,
                    size: screenWidth(context) * 0.01,
                  ),
                  Indicator(
                    color: Colors.green,
                    text: 'Completed\n30',
                    isSquare: true,
                    size: screenWidth(context) * 0.01,
                  ),
                ],
              ),
              sizedBox(0, 16),
            ],
          ),
        ],
      ),
    );
  }
}
