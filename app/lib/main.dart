import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    1,
    2,
    3,
    4,
    5,
    6,
    6,
    8,
    6,
    54,
    4,
    3,
    3,
    5,
    5,
    67,
    8,
    97,
    5,
    4,
    3,
    3,
    223,
    3,
    5,
    56,
    67,
    8,
    7
  ];

  tostshow() {
    Fluttertoast.showToast(
        msg: "Number  ",
        toastLength: Toast.LENGTH_SHORT,
        //  gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  showdata() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Home Page"),
      ),
      body: Container(
        // height: 50,       // we can also use singlechildscrollview
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              // return Text("Number ${list[index]}");

              return ListTile(
                title: Text("Number ${list[index]}"), //Tile
                subtitle: Text("Pakistan"), // subtitle
                leading: Icon(Icons.home), //On the start list each item
                trailing: Icon(Icons.done),
                // onLongPress: (tostshow()),
                onTap: (showdata()),
              );
            }),
      ),
    );
  }
}
