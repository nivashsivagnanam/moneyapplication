import 'package:flutter/material.dart';
import 'package:moneyapplication/expensepage.dart';
import 'package:moneyapplication/saveInput.dart';
import 'package:moneyapplication/nextpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController dueDate = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("MoneyManagement",
            style: TextStyle(
              fontSize: 20,
              color: Colors.orange,
            )),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {const snackdemo = SnackBar(
                  content: Text('Data Is Saved'),
                  duration: Duration(milliseconds: 1000),
                  backgroundColor: Colors.green,
                  elevation: 10,
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(30),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExpensePage(
                                amount: number.text,
                                date: dueDate.text,
                                write: name.text,
                              )));
                },
                child: Text(
                  "EXPENSE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  const snackdemo = SnackBar(
                    content: Text('Data Is Saved'),
                    duration: Duration(milliseconds: 1000),
                    backgroundColor: Colors.green,
                    elevation: 10,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(30),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackdemo);

                  // 'showSnackBar' is deprecated and shouldn't be used.
                  //Use ScaffoldMessenger.showSnackBar.
                  // Scaffold.of(context).showSnackBar(snackdemo);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NextPage(
                              amount: number.text,
                              date: dueDate.text,
                              write: name.text,
                            )),
                  );
                },
                child: Text(
                  "INCOME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.check),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          /* Row(
              children: [
                TextFormField(
                  decoration:
                      InputDecoration(),
                )
              ],
            )*/
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: number,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "EnterYour Amount",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                hintText: "your Amount",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 20),
            child: TextField(
              controller: name,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Description",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: "what has done ?",
                  icon: Icon(Icons.feed_outlined)),
            ),
          ),
          /* const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.calendar_month,
                    ),
                    labelText: "Date"),
              ),
            ),*/
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 50, left: 50),
                child: TextField(
                  controller: dueDate,
                  decoration: InputDecoration(hintText: "date"),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() async {
                      DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      dueDate.text = date.toString().substring(0, 10);
                      print(date);
                    });
                  },
                  icon: Icon(Icons.calendar_month)),
              /* Expanded(
                  child: SizedBox(height: 50,
                    child: ListView(children: [ListTile(leading: Icon(Icons.add),title: Text("add"),)

                    ],),
                  ),
                )*/
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.add), label: "add"),
          NavigationDestination(icon: Icon(Icons.analytics), label: "analysis"),
          NavigationDestination(
              icon: Icon(Icons.calendar_month), label: "calander"),
          NavigationDestination(icon: Icon(Icons.person), label: "others")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
