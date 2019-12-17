import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white,),
        padding: EdgeInsets.all(100), child: Center(
      child:Center(
    child: GestureDetector(
    onTap: () {
    _showDialog(context);
    },
    child: MyButton( key: key, )
    ) ,
    )
    )

    );
  }

    void _showDialog(BuildContext context) {
  // flutter defined function
  showDialog(
  context: context, builder: (BuildContext context) {
  // return object of type Dialog
  return AlertDialog(
  title: new Text("Message"),
  content: new Text("Hello World"),
  actions: <Widget>[
  new FlatButton(
  child: new Text("Close"),

  onPressed: () {
  Navigator.of(context).pop();
  child: new Text("Close");

  },
  ),
  ],
  );
  },
  );
}
}

class MyButton extends StatelessWidget {
  MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
          right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
        ),
      ),
      child: Container(
        padding: const
        EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
            left: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
            right: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
            bottom: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
          ),
          color: Colors.grey,
        ),
        child: const Text(
            'Click',textAlign: TextAlign.center, style: TextStyle(color: Colors.black)
        ),
      ),
    );
  }
}

