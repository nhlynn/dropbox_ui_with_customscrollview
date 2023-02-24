import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import 'package:pie_chart/pie_chart.dart';
import '../utils/app_style.dart';

class StorageHeaderSection extends StatelessWidget {
  const StorageHeaderSection({
    super.key,
    required this.dataMap,
    required this.colorList,
  });

  final Map<String, double> dataMap;
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal! * 6),
          child: SizedBox(
            width: 153,
            height: 153,
            child: PieChart(
              dataMap: dataMap,
              chartType: ChartType.ring,
              baseChartColor: Colors.grey[50]!.withOpacity(0.15),
              colorList: colorList,
              chartValuesOptions: const ChartValuesOptions(
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                showChartValues: false,
              ),
              legendOptions: const LegendOptions(
                showLegends: false,
              ),
              totalValue: 100,
            ),
          ),
        ),
        Text(
          "Available",
          textAlign: TextAlign.center,
          style: kQuestrialRegular.copyWith(
            color: kGreyColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 6,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 1,),
        Text(
          "43.36 GB",
          textAlign: TextAlign.center,
          style: kQuestrialBold.copyWith(
            color: kBlackColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 8,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 1,),
        Text(
          "Total 128 GB",
          textAlign: TextAlign.center,
          style: kQuestrialRegular.copyWith(
            color: kGreyColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 6,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 4,),
      ]),
    );
  }
}