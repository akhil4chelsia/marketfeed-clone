import 'package:flutter/material.dart';
import 'package:market_news/components/percentage_change.dart';
import 'package:market_news/components/points_change.dart';
import 'package:market_news/constants.dart';

class IndianMarketsSummary extends StatelessWidget {
  final dynamic nifty;
  final dynamic sensex;

  IndianMarketsSummary({this.nifty, this.sensex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IndianIndex(
              name: IndianIndex.NIFTY,
              points: nifty['points'],
              percentageChange: nifty['percentageChange'],
              pointsChange: nifty['pointsChange'],
            ),
            IndianIndex(
              name: IndianIndex.SENSEX,
              points: sensex['points'],
              percentageChange: sensex['percentageChange'],
              pointsChange: sensex['pointsChange'],
            )
          ],
        ),
      ),
    );
  }
}

class IndianIndex extends StatelessWidget {
  static final String NIFTY = 'NIFTY 50';
  static final String SENSEX = 'SENSEX';
  final String name;
  final String points;
  final String percentageChange;
  final String pointsChange;

  IndianIndex(
      {this.name, this.points, this.percentageChange, this.pointsChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: kIndexNameTextStyle,
        ),
        Text(
          points,
          style: kIndexPointsTextStyle,
        ),
        Row(
          children: [
            PercentageChange(percentageChange: percentageChange),
            PointChange(pointsChange: pointsChange),
          ],
        )
      ],
    );
  }
}
