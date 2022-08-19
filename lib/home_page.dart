import 'dart:ffi';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: PieChart(PieChartData(sections: [
                ///Deposits
                PieChartSectionData(
                  color: Colors.blue,
                  value: responseData['summary']['totalDeposits'] as double,
                  title: 'Deposits',
                  radius: 200,
                  titleStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                ///Withdrawals
                PieChartSectionData(
                  color: Colors.red,
                  value: responseData['summary']['totalWithdrawals'] as double,
                  title: 'Withdrawals',
                  radius: 200,
                  titleStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                ///InterestPosted
                PieChartSectionData(
                  color: Colors.green,
                  value: double.parse(responseData['summary']
                          ['totalInterestPosted']
                      .toString()),
                  title: 'Interest Posted',
                  radius: 200,
                  titleStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ], centerSpaceRadius: 0)),
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Widhrawals")
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Deposits")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
