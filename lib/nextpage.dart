import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  String write;
  String amount;
  String date;
  NextPage({required this.write, required this.amount, required this.date});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('INCOME'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("date:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 25)),
                  Text("description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 22)),
                  Text("amount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 25))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                     // Icon(Icons.edit,size: 10),
                      Text(
                        date,
                        textScaleFactor: 1.0,
                      ),
                      //SizedBox(height: 30,),
                      Text(
                        write,
                        textScaleFactor: 1.1,
                      ),
                      Text(
                        amount,
                        textScaleFactor: 1.2,

                      ),//Icon(Icons.delete_forever),
                      Icon(Icons.edit),Icon(Icons.delete_forever),
                    ])
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
