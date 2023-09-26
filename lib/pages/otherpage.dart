import 'package:flutter/material.dart';
import 'package:moneyapplication/others_page/other_myAccount.dart';


class OthersPage extends StatelessWidget {


   OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0),
          child: Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            height: 200,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    child: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 71,
                        ),
                        radius: 35,
                        backgroundColor: Colors.blueGrey),
                    radius: 40,
                    backgroundColor: Colors.orangeAccent,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("HI ITS YOU"),
                  // Spacer(),
                  // Icon(
                  //   Icons.notifications_rounded,
                  //   size: 25.sp,
                  // )
                ],
              ),
            ),
          )),



        body: ListView(children: [
          MyAccount(),
          MyLanguage(),
          MyCurrency(),
          DateFormate(),
          ResetAllCategories(),
          Delete(),
          ShareFriends(),
          RateApp(),


        ])
    );
  }
}

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("MyAccount"),


        leading: CircleAvatar(child: Icon(Icons.person,color: Colors.brown),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right),onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAccounts()));
    },);
  }
}

  //  );
 // }
//}
class MyLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("Language"),


        leading: CircleAvatar(child: Icon(Icons.language,color: Colors.black),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right)
    );
  }
}
class MyCurrency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("Currency"),


        leading: CircleAvatar(child: Icon(Icons.currency_rupee,color: Colors.orangeAccent),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}
class DateFormate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("DateFormate"),


        leading: CircleAvatar(child: Icon(Icons.date_range,color: Colors.blue),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}
class ResetAllCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("ResetAllCategories"),


        leading: CircleAvatar(child: Icon(Icons.lock_reset_sharp,color: Colors.pink),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}
class Delete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("Delete"),


        leading: CircleAvatar(child: Icon(Icons.delete_forever,color: Colors.redAccent),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}
class ShareFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("ShareFriends"),


        leading: CircleAvatar(child: Icon(Icons.share,color: Colors.blueGrey),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}
class  RateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("RateApp"),


        leading: CircleAvatar(child: Icon(Icons.star,color: Colors.orange),backgroundColor: Colors.white),
        trailing: Icon(Icons.arrow_right));
  }
}