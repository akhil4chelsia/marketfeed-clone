import 'package:flutter/material.dart';
import 'package:market_news/components/dropdown_selector.dart';
import 'package:market_news/components/percentage_change.dart';
import 'package:market_news/constants.dart';
import 'package:market_news/mock/mock_data.dart';

class LeaderBoardScreen extends StatefulWidget {
  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  String selectedOperation = 'Top Gainers';
  String selectedIndex = 'NIFTY 50';

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropDownSelector(
                options: ['Top Gainers', 'Top Losers'],
                selected: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value;
                  });
                },
              ),
              DropDownSelector(
                options: ['NIFTY 50', 'NIFTY 100', 'NIFTY AUTO', 'NIFTY BANK'],
                selected: selectedIndex,
                onChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      LeaderBoardTable(
        headings: ['Symbol (NSE)', 'LTP', 'Change'],
        data: leaderBoardData,
      ),
    ]);
  }
}

class LeaderBoardTable extends StatelessWidget {
  final List<String> headings;
  final List<List<String>> data;

  LeaderBoardTable({this.headings, this.data});

  List<Widget> getHeadings() {
    List<Widget> headingsWidgets = [];
    for (var heading in headings) {
      headingsWidgets.add(Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            heading,
            style: kTableHeadingTextStyle,
          ),
        ),
      ));
    }
    return headingsWidgets;
  }

  List<Widget> getRowData(row) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          row[0],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          row[1],
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: PercentageChange(
          percentageChange: row[2],
        ),
      ),
    ];
  }

  List<TableRow> getTableWidgets() {
    List<TableRow> tableWidgets = [];
    tableWidgets.add(
      TableRow(
        children: getHeadings(),
      ),
    );

    for (var row in data) {
      tableWidgets.add(
        TableRow(
          children: getRowData(row),
        ),
      );
    }

    return tableWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Table(
        columnWidths: {
          0: FixedColumnWidth(200.0),
          1: FlexColumnWidth(100.0),
          2: FixedColumnWidth(100.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(width: 0.5, color: Colors.grey),
        children: getTableWidgets(),
      ),
    );
  }
}
