import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/core/theme/app_color.dart';
import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';

class FinancialChart extends StatefulWidget {
  final List<MonthlyData> monthlyData;
  final bool isEbitda;
  const FinancialChart({super.key, required this.monthlyData, this.isEbitda=true});

  @override
  State<FinancialChart> createState() => _FinancialChartState();
}

class _FinancialChartState extends State<FinancialChart> {

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return AspectRatio(
      aspectRatio: 1.8,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: _maxValue(),
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 1,
                getTitlesWidget: (value, _) {
                  final index = value.toInt();
                  if (index >= 0 && index < widget.monthlyData.length) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        widget.monthlyData[index].month.substring(0,1),
                        style: theme.textTheme.headlineSmall?.copyWith(
                            fontSize: 8.sp
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 10000000,
                getTitlesWidget: (value, _) {
                  if (value % 10000000 != 0) return const SizedBox.shrink();
                  return Text(
                    '₹${(value / 10000000).toStringAsFixed(0)}L',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontSize: 8.sp
                    ),
                  );
                },
              ),
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            horizontalInterval: 10000000,
          ),
          borderData: FlBorderData(show: false),
          barGroups: List.generate(widget.monthlyData.length, (index) {
            final val = widget.monthlyData[index].value;
            return BarChartGroupData(
              x: index,
              barRods: [
                widget.isEbitda
                    ?
                BarChartRodData(
                  toY: val.toDouble(),
                  width: 14,
                  rodStackItems: [
                    BarChartRodStackItem(0, val * 0.5, AppColors.grey900),
                    BarChartRodStackItem(val * 0.5, val.toDouble(), AppColors.purple100),
                  ],
                  borderRadius: BorderRadius.circular(4),
                )
                    : BarChartRodData(
                  toY: val.toDouble(),
                  width: 14,
                  color: AppColors.blue600,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  double _maxValue() {
    final max = widget.monthlyData.map((e) => e.value).reduce((a, b) => a > b ? a : b);
    return ((max ~/ 1000000) + 1) * 1000000;
  }
}
