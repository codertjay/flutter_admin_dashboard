import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> PieChartSectionDatas = [
      PieChartSectionData(
        value: 25,
        color: primaryColor,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        value: 10,
        color: const Color(0xFF26E5ff),
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        value: 18,
        color: const Color(0xFFFFCF26),
        showTitle: false,
        radius: 19,
      ),
      PieChartSectionData(
        value: 15,
        color: const Color(0xFFEE2727),
        showTitle: false,
        radius: 16,
      ),
      PieChartSectionData(
        value: 25,
        color: primaryColor.withOpacity(0.1),
        showTitle: false,
        radius: 13,
      )
    ];
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sections: PieChartSectionDatas,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sectionsSpace: 0)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "29.1",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                    ),
              ),
              const Text("of 1200")
            ],
          ))
        ],
      ),
    );
  }
}
