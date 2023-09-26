import 'package:flutter/material.dart';
import 'package:moneyapplication/pages/otherpage.dart';
class MyAccounts extends StatelessWidget {
   MyAccounts({super.key});
  final List MyAccount=[
    "Explore premium",
    "personal Informmation",
    "Account Link",
    "Change Password",
    "Sign Out"
  ];
  _Ecorn( ){ Icon(Icons.workspace_premium);
  Icon(Icons.accessibility);
  Icon(Icons.account_box_rounded);
  Icon(Icons.password);
  Icon(Icons.logout);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(600),
          child: Container(
            color: Colors.grey.shade50,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            height:350,
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: Center(
                child: CircleAvatar(
                  child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 71,
                      ),
                      radius: 35,
                      backgroundColor: Colors.white),
                  radius: 40,
                  backgroundColor: Colors.black87,

                ),
                //
              ),
            ),
          ),
      ),
       body: ListView.builder(
        itemCount: MyAccount.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(//leading: //Icon(Icons.workspace_premium
            // ),
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Text("${_Ecorn(
                )}"),
              ),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
              title: Text(MyAccount[index]),
            ),
          );
        }),


    );
  }
//_Ecorn(){

//}
}