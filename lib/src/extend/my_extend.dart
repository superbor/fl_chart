import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/painting/text_style.dart';

class BarTooltipIconStyle {
  double? width;
  Color? color;

  BarTooltipIconStyle(this.width, this.color);
}

typedef GetBarTooltipItems = List<BarTooltipItem>? Function(
  BarChartGroupData group,
  int groupIndex,
  BarChartRodData rod,
  int rodIndex,
);


 List<BarTooltipItem>? defaultBarTooltipItems(BarChartGroupData group,
    int groupIndex,
    BarChartRodData rod,
    int rodIndex,) {
  final color = rod.gradient?.colors.first ?? rod.color;
  final textStyle = TextStyle(
    color: color,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  return [BarTooltipItem(rod.toY.toString(), textStyle)];
}
