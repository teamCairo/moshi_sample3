import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:moshi_sample3/signin/signin_page.dart';


class Home extends StatelessWidget{
  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム画面"),
      ),
      body: Center(child: Column(
        children: [
          ElevatedButton(
            child: Text('登録'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
          )

        ]
      )

      ),
    );
  }
}