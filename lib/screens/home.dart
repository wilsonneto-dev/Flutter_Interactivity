import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();

}

class _Home extends State<Home> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String string) {
                setState((){
                  name = string;
                });
              },
              decoration: InputDecoration(
                hintText: 'Please insert your name',
                prefixIcon: Icon(Icons.add_box)
              )
            ),
            Text("Hello $name!!")
          ],
        ),
        padding: EdgeInsets.all(15),
      )
    );
  }
}
