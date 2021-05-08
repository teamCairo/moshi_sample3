import 'package:flutter/material.dart';

class Qlist extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('第1章'),

            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('第2章'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("問題リスト"),


        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.list),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ElevatedButton(
              child: const Text('第1章'),

              onPressed: () {},

            ),
            ElevatedButton(
              child: const Text('第2章'),

              onPressed: () {},),
            ElevatedButton(
              child: const Text('第3章'),


              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('第4章'),


              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('第5章'),

              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('第6章'),

              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('第7章１'),

              onPressed: () {},
            ),
          ]
      ),
    );
  }
}