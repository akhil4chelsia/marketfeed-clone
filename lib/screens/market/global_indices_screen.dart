import 'package:flutter/material.dart';
import 'package:market_news/components/sector_summary.dart';
import 'package:market_news/mock/mock_data.dart';
import 'package:market_news/screens/market/indian_indices_screen.dart';

class GlobalIndicesScreen extends StatelessWidget {
  List<SectorSummary> getMarketData(market_data) {
    List<SectorSummary> sectorSummaryList = [];
    for (var key in market_data.keys) {
      var sector = market_data[key];
      sectorSummaryList.add(SectorSummary(
        name: key,
        points: sector['points'],
        percentageChange: sector['percentageChange'],
        pointsChange: sector['pointsChange'],
        country: sector['country'],
        isOpen: sector['isOpen'],
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
                SectionHeading(
                  heading: 'US Markets',
                ),
                SectionData(data: getMarketData(usMarketsData)),
                SectionHeading(
                  heading: 'Europe Markets',
                ),
                SectionData(data: getMarketData(europeMarketsData)),
                SectionHeading(
                  heading: 'Asian Markets',
                ),
                SectionData(data: getMarketData(asianMarketsData)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
