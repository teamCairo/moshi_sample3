//import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

//class SignInModel extends ChangeNotifier {
  //Sring mail = '';
  //String password = '';

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  //Future signUp() async {
    //final FirebaseUser user = (await _auth.createUserWithEmailAndPassword{
      //email: mail,
     // password: password,
   //// })
      ////  .user;
 // }
//}

//@override
//Widget build(BuildContext context) {
 // final mailController = TextEditingController();
 // final passwordController = TextEditingController();


 // return ChangeNotifierProvider<SignInModel>(
    //  create: (_) => SignInModel(),
    //  child: Scaffold(
     //     appBar: AppBar(
      //      title: Text('サインアップ'),
      //    ),
       //   body: Consumer<SignInModel>(
       //       builder: (context, model, child) {
       //         return Padding(
        //          padding: const EdgeInsets.all(8.0),
        //          child: Column(
        //            children: <Widget>[
         //             TextField(
         //               decoration: InputDecoration(hintText: 'moshi@example.com',),
//             controller: mailController,
//                      onChanged: (text) {
//                        model.mail = text;
//                      },
//                    ),
//                    TextField(
//                      decoration: InputDecoration(hintText: 'パスワード',),
//                      obscureText: true,
//                      controller: passwordController,
//                      onChanged: (text) {
//                        model.password = text;
//                      },
//                    ),
//                    ElevatedButton(
//                        child: Text('登録する'),
//                        onPressed: () async {
//                          await model.signUp();
//                        })
//                  ],
//                ),
//              );
//            }
//        )
//    )
//);
//}