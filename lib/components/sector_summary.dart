import 'package:flutter/material.dart';
import 'package:market_news/components/article_summary.dart';
import 'package:market_news/components/percentage_change.dart';
import 'package:market_news/components/points_change.dart';
import 'package:market_news/constants.dart';

class SectorSummary extends StatelessWidget {
  final String name;
  final String points;
  final String percentageChange;
  final String pointsChange;

  final String country;
  final bool isOpen;

  const SectorSummary(
      {this.name,
      this.points,
      this.percentageChange,
      this.pointsChange,
      this.country,
      this.isOpen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kSectorNameTextStyle,
                ),
                country != null && isOpen != null
                    ? Row(
                        children: [
                          DotSeparator(
                            color: isOpen ? Colors.green : Colors.red,
                          ),
                          Text(
                            'USA',
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
            Text(
              points,
              style: kIndexPointsTextStyle,
            ),
            PercentageChange(
              percentageChange: percentageChange,
            ),
            PointChange(
              pointsChange: pointsChange,
            ),
          ],
        ),
      ),
    );
  }
}
