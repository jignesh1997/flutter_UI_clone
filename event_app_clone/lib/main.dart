import 'package:flutter/material.dart';
import "package:flutter_dtx/flutter_dtx.dart";
import 'const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.greyColor,
      body: Column(
        children: <Widget>[
          Container(
            height: context.getDeviceSize().height / 3,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
                color: Colors.white),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 40, right: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Exp.App",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      )),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                          Container(
                              height: 16,
                              width: 16,
                              decoration: ShapeDecoration(
                                color: Colors.red,
                                shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4, color: Colors.white)),
                              ))
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20,left: 20),
                  child: Text("Suggested Themes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                
                Container(
                  margin: const EdgeInsets.only(top: 10,right: 20,left: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                      child: Text("12 Suggested Themes",style: TextStyle(color: ColorsConst.greyColor,fontSize: 10,fontWeight: FontWeight.w800),

                      ))



                    ],

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
