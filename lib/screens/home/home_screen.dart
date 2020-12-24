import 'package:flutter/material.dart';
import 'package:market_news/components/app_drawer.dart';
import 'package:market_news/components/bottom_menu_bar.dart';
import 'package:market_news/components/confirm_dialog.dart';
import 'package:market_news/constants.dart';
import 'package:market_news/utils/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  TabController _marketTabController;
  int currentTab = 0;

  List<Widget> _tabBarOptions;
  List<Widget> _tabBarViewOptions;

  @override
  void initState() {
    reInitialize();
    super.initState();
  }

  void reInitialize() {
    _tabController = new TabController(initialIndex: 0, length: 3, vsync: this);
    _marketTabController =
        new TabController(initialIndex: 0, length: 3, vsync: this);

    _tabBarOptions = <Widget>[
      getHomeScreenTabBars(_tabController),
      getMarketScreenTabBars(_marketTabController)
    ];

    _tabBarViewOptions = [
      getHomeScreenTabBarViews(_tabController),
      getMarketScreenTabBarViews(_marketTabController),
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    _marketTabController.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => ConfirmDialog(
            title: 'Exit',
            message: 'Are you sure you want to exit?',
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(),
            Text(
              'marketfeed.',
              style: kAppTitleStyle,
            ),
            Icon(
              Icons.search,
              size: 30,
            )
          ]),
          bottom: _tabBarOptions.elementAt(currentTab),
        ),
        body: _tabBarViewOptions.elementAt(currentTab),
        bottomNavigationBar: BottomMenuBar(
          currentTab: currentTab,
          onTap: (index) {
            setState(() {
              currentTab = index;
            });
          },
        ),
      ),
    );
  }
}
