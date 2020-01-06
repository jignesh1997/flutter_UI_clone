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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        selectedItemColor: ColorsConst.blueText,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              title: SizedBox.shrink(), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: SizedBox.shrink(), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: SizedBox.shrink(), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: SizedBox.shrink(), icon: Icon(Icons.person)),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: context.getDeviceSize().height / 2.0,
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
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Suggested Themes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "12 Suggested Themes",
                        style: TextStyle(
                            color: ColorsConst.greyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      )),
                      Text(
                        "See all",
                        style: TextStyle(color: ColorsConst.blueText),
                      )
                    ],
                  ),
                ),
                Container(
                    height: context.getDeviceSize().width / 2.8,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (con, _) {
                        return Container(
                          height: con.getDeviceSize().width / 2.0,
                          width: con.getDeviceSize().width / 3.8,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: con.getDeviceSize().width / 3.6,
                                width: con.getDeviceSize().width / 2.8,
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text("Food",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)))
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, postion) {
                        return SizedBox(
                          width: 6,
                        );
                      },
                    ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: ListView.separated(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, _) {
                  return Container(
                      height: 250,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, top: 20, bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Best of Vienna Waking Tour",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:EdgeInsets.only(right: 10),
                                    child: Chip(
                                        backgroundColor: ColorsConst.blueLight,
                                        label: Text(
                                          "Travelling",
                                          style: TextStyle(
                                              color: ColorsConst.blueText),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Chip(
                                        backgroundColor: ColorsConst.blueLight,

                                        label: Text(
                                          "History",
                                          style: TextStyle(
                                              color: ColorsConst.blueText),
                                        )),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: ColorsConst.greyColor
                                    ),
                                  ),
                                  Text("starts at 10:30",style: TextStyle(color: ColorsConst.greyColor),)
                                ],
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            Expanded(
                              child: Stack(
                                children: <Widget>[


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50))));
                },
                separatorBuilder: (__, ___) {
                  return SizedBox(height: 10);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
