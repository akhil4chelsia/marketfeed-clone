import 'package:flutter/material.dart';
import 'package:market_news/constants.dart';
import 'package:market_news/screens/home/editorial_screen.dart';
import 'package:market_news/screens/home/jargons_screen.dart';
import 'package:market_news/screens/home/market_news_screen.dart';
import 'package:market_news/screens/market/global_indices_screen.dart';
import 'package:market_news/screens/market/indian_indices_screen.dart';
import 'package:market_news/screens/market/leaderboard_screen.dart';

TabBar getHomeScreenTabBars(tabController) {
  return TabBar(
    controller: tabController,
    indicatorColor: Colors.red,
    labelColor: Colors.red,
    unselectedLabelColor: Colors.white,
    indicatorWeight: 6,
    tabs: [
      Tab(
        child: Text(
          'Market News',
          style: kTabTextStyle,
        ),
      ),
      Tab(
        child: Text(
          'Editorial',
          style: kTabTextStyle,
        ),
      ),
      Tab(
        child: Text(
          'Jargons',
          style: kTabTextStyle,
        ),
      ),
    ],
  );
}

TabBarView getHomeScreenTabBarViews(tabController) {
  return TabBarView(
    key: Key('homescreen'),
    controller: tabController,
    children: [
      MarketNewsScreen(),
      EditorialScreen(),
      JargonsScreen(),
    ],
  );
}

TabBar getMarketScreenTabBars(tabController) {
  return TabBar(
    key: Key('marketscreen'),
    controller: tabController,
    indicatorColor: Colors.red,
    labelColor: Colors.red,
    unselectedLabelColor: Colors.white,
    indicatorWeight: 6,
    tabs: [
      Tab(
        child: Text(
          'Indian Markets',
          style: kMarketTabTextStyle,
        ),
      ),
      Tab(
        child: Text(
          'Global Markets',
          style: kMarketTabTextStyle,
        ),
      ),
      Tab(
        child: Text(
          'Leader Board',
          style: kMarketTabTextStyle,
        ),
      ),
    ],
  );
}

TabBarView getMarketScreenTabBarViews(tabController) {
  return TabBarView(
    controller: tabController,
    children: [
      IndianIndicesScreen(),
      GlobalIndicesScreen(),
      LeaderBoardScreen(),
    ],
  );
}
