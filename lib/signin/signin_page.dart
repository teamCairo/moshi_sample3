import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moshi_sample3/signin/signin_model.dart';
//import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {

  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
  // 入力されたメールアドレス（ログイン）
  String loginUserEmail = "";
  // 入力されたパスワード（ログイン）
  String loginUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextFormField(  // テキスト入力のラベルを設定
                decoration: InputDecoration(labelText: "メールアドレス"),

              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "パスワード(6文字以上)"),
                obscureText: true,),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final UserCredential result =
                    await auth.signInWithEmailAndPassword(
                      email: newUserEmail,
                      password: newUserPassword,
                    );
                    // ログインに成功した場合
                    final User user = result.user;
                    //setState(() {
                      //infoText = "ログインOK：${user.email}";
                    //}
                    //);
                  } catch (e) {
                    // ログインに失敗した場合
                    //setState(() {
                      //infoText = "ログインNG：${e.toString()}";
                    //});
                  }
                },
                child: Text("ユーザー登録"),
              ),
              const SizedBox(height: 8),

              TextFormField(
                decoration: InputDecoration(labelText: "メールアドレス"),
                //onChanged: (String value) {
                  //setState(() {
                    //loginUserEmail = value;
                  //});
                //},
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "パスワード"),
                obscureText: true,
                //onChanged: (String value) {
                  //setState(() {
                    //loginUserPassword = value;
                  //});
               // },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final UserCredential result =
                    await auth.signInWithEmailAndPassword(
                      email: loginUserEmail,
                      password: loginUserPassword,
                    );
                    // ログインに成功した場合
                    final User user = result.user;
                    //setState(() {
                      //infoText = "ログインOK：${user.email}";
                    //});
                  } catch (e) {
                    // ログインに失敗した場合
                    //setState(() {
                      //infoText = "ログインNG：${e.toString()}";
                    //});
                  }
                },
                child: Text("ログイン"),
              ),
              const SizedBox(height: 8),
              Text(infoText),
            ],
          ),
        ),
      ),
    );
  }
}