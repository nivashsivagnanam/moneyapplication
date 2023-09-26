import 'package:flutter/material.dart';
import 'package:moneyapplication/homepage.dart';

class ExpensePage extends StatelessWidget {
  String write;
  String amount;
  String date;
  ExpensePage({required this.write, required this.amount, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EXPENSE'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //children: [
              //  Text("date:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 25)),
              //Text("description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 22)),
              //Text("amount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 25))
              // ],
              // ),
              /* Padding(
                padding: const EdgeInsets.all(10),
                child: Card(color: Colors.white70,
                  child: Table(
                    children: [
                      TableRow(children: [
                        Text(
                          date,
                          textScaleFactor: 1.2,
                        ),
                        Text(
                          write,
                          textScaleFactor: 1.1,
                        ),
                        Text(
                          amount,
                          textScaleFactor: 1.2,

                        ),IconButton(onPressed: (){Navigator.pop(context,MyHomePage());}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon:Icon(Icons.delete_forever)),
                      ],
                      )
                    ],
                  ),
                ),
              )*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(date), Text(write), Text(amount),
                IconButton(onPressed: (){

                }, icon:Icon(Icons.edit))

                ],
              ),
            ],
          ),
        ));
  }

}
