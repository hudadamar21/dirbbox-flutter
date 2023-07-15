import 'package:dirbbird/consts/STORAGE_COLORS.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 14.0 : 1.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [
        Shadow(color: Color.fromARGB(115, 0, 0, 0), blurRadius: 5)
      ];

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: StorageColors.images,
            value: 15,
            title: '15%',
            titleStyle: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              shadows: shadows,
            ),
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: StorageColors.videos,
            value: 12,
            title: '12%',
            titleStyle: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              shadows: shadows,
            ),
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: StorageColors.documents,
            value: 38,
            title: '38%',
            titleStyle: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              shadows: shadows,
            ),
            radius: radius,
          );

        case 3:
          return PieChartSectionData(
            color: StorageColors.designFiles,
            value: 35,
            title: '35%',
            titleStyle: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              shadows: shadows,
            ),
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
