import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController dueDatecontroller = TextEditingController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset : false,
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
                onPressed: () {},
                child: Text("Expense"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Income"),
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "EnterNumber",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Description", icon: Icon(Icons.feed_outlined)),
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
                padding: const EdgeInsets.only(top: 20,bottom: 20,right: 50,left: 50),
                child: TextField(
                  controller: dueDatecontroller,
                  decoration: InputDecoration(hintText: "date"),),
              ),
              IconButton(
                  onPressed: () {
                    setState(() async {
                      DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      dueDatecontroller.text = date.toString().substring(0, 10);
                      print(date);
                    });
                  },
                  icon: Icon(Icons.calendar_month)),
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
