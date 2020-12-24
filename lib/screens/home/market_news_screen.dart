import 'package:flutter/material.dart';
import 'package:market_news/components/article_summary.dart';
import 'package:market_news/mock/mock_data.dart';

class MarketNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 30),
        itemCount: mockMarketNews.length,
        itemBuilder: (context, index) {
          final article = mockMarketNews[index];
          return ListTile(
            title: ArticleSummary(
              imageUrl: article['imageUrl'],
              heading: article['heading'],
              tagName: article['tagName'],
              numberOfComments: int.parse(article['comments']),
            ),
          );
        });
  }
}
