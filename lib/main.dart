import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _currentNumber = "";

  void _clickNumber(String number) {
    setState(() {
      _currentNumber = _currentNumber + number;
    });
  }
  void _clickCE() {
    print("CE'ye basti");
  }
  void _clickC() {
    print("C'ye basti");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              _currentNumber,
              style: TextStyle(color: CupertinoColors.white, fontSize: 27),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              FlatButton(
                    onPressed: () {
                           _clickNumber("1");
                    },
                    child: Text("1", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                      ),  color: Colors.blue,),

              FlatButton(
                onPressed: () {
                  _clickNumber("2");
                },
                child: Text("2", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                ),  color: Colors.blue,),
                FlatButton(
                  onPressed: () {
                    _clickNumber("3");
                  },
                  child: Text("3", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    _clickNumber("4");
                  },
                  child: Text("4", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),

                FlatButton(
                  onPressed: () {
                    _clickNumber("5");
                  },
                  child: Text("5", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),
                FlatButton(
                  onPressed: () {
                    _clickNumber("6");
                  },
                  child: Text("6", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,)
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    _clickNumber("7");
                  },
                  child: Text("7", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),

                FlatButton(
                  onPressed: () {
                    _clickNumber("8");
                  },
                  child: Text("8", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),
                FlatButton(
                  onPressed: () {
                    _clickNumber("9");
                  },
                  child: Text("9", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,)
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    _clickC();
                  },
                  child: Text("C", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),

                FlatButton(
                  onPressed: () {
                    _clickNumber("0");
                  },
                  child: Text("0", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,),
                FlatButton(
                  onPressed: () {
                    _clickCE();
                  },
                  child: Text("CE", style: TextStyle(color: CupertinoColors.white, fontSize: 27),

                  ),  color: Colors.blue,)
              ],)

          ],
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
