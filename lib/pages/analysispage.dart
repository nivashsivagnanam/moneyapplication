import 'package:flutter/material.dart';
import 'package:moneyapplication/expensepage.dart';
class AnalysisPage extends StatelessWidget {
 const  AnalysisPage({super.key ,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Analysis",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("DATE"),
              Text("DAY")],
            ),
          ),
          Card(child: Padding(
            padding: const EdgeInsets.all(100),
            child: Text("Expense +"),
          ),)
        ],
      ),

    );
  }
}
