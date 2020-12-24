import 'package:flutter/material.dart';
import 'package:market_news/components/indian_market_summary.dart';
import 'package:market_news/components/sector_summary.dart';
import 'package:market_news/constants.dart';
import 'package:market_news/mock/mock_data.dart';

class IndianIndicesScreen extends StatelessWidget {
  final nifty = indianMarkets['NIFTY'];
  final sensex = indianMarkets['SENSEX'];
  final niftyAuto = sectorialIndices['NIFTYAUTO'];
  final niftyBank = sectorialIndices['NIFTYBANK'];

  List<SectorSummary> getSectorsList(market_data) {
    List<SectorSummary> sectorSummaryList = [];
    for (var key in market_data.keys) {
      var sector = market_data[key];
      sectorSummaryList.add(SectorSummary(
        name: key,
        points: sector['points'],
        percentageChange: sector['percentageChange'],
        pointsChange: sector['pointsChange'],
      ));
    }
    return sectorSummaryList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IndianMarketsSummary(
                  nifty: nifty,
                  sensex: sensex,
                ),
                Divider(
                  thickness: 2,
                ),
                SectionHeading(
                  heading: 'Sectorial Indices',
                ),
                SectionData(data: getSectorsList(sectorialIndices)),
                SectionHeading(
                  heading: 'Broad Market Indices',
                ),
                SectionData(data: getSectorsList(sectorialIndices)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SectionData extends StatelessWidget {
  final List<SectorSummary> data;
  const SectionData({this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: data,
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String heading;

  const SectionHeading({this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        heading,
        style: kIndexNameTextStyle,
      ),
    );
  }
}
