import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Das sind Tables'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: new Table(
          border: TableBorder.all(),
          defaultColumnWidth: FixedColumnWidth(30.0),
          columnWidths: {1: FractionColumnWidth(0.2)},
          children: [
            TableRow(children: [
              Text("Text A"),
              Text("Text B"),
              Text("Text C"),
              Text("Text D"),
              Text("Text E"),
              Text("Text F")
            ]),
            TableRow(children: [
              Text("Text 1"),
              Text("Text 2"),
              Text("Text 3"),
              Text("Text 4"),
              Text("Text 5"),
              Text("Text 6")
            ])
          ]//Lol
        )
    );
  }
}
