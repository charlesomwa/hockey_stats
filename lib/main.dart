import 'package:flutter/material.dart';
import 'package:hockey_stats/pages/dashboard.dart';
import 'package:hockey_stats/pages/stats.dart';
import 'package:hockey_stats/pages/addgame.dart';
import 'package:hockey_stats/util/SimpleButton.dart';

void main() => runApp(StatsApp());

class StatsApp extends StatelessWidget {
  // This widget is the root of your application.
  Color green = Colors.greenAccent[400];
  Color orange = Colors.orangeAccent[400];
  Color red = Colors.redAccent[400];
  Color lightBlue = Colors.lightBlueAccent[400];
  Color purple = Colors.purpleAccent[400];
  Color yellow = Colors.yellowAccent[400];
  Color lime = Colors.limeAccent[400];
  Color teal = Colors.tealAccent[400];
  Color cyan = Colors.cyanAccent[400];
  Color black = Colors.grey[850];

  @override
  Widget build(BuildContext context) {

    AppBar();
    return MaterialApp(
      title: 'HockeyStats',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.black,
        //brightness: Brightness.dark,
        primaryColor: black,
        accentColor: green,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w900, fontFamily: 'Monsterrat'),
          title: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, fontFamily: 'Monsterrat'),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Monsterrat', fontWeight: FontWeight.w500),
          button: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800, fontFamily: 'Monsterrat')
        ),
      ),

      home: MainPage(title: 'Dashboard'),


    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<StatefulWidget> createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _page = 0;

  var pages = [
    "Dashboard",
    "Statistics",
    "New Game"
  ];

  void _handlePageChange(int context) => setState(() => _page = context);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title: Text(pages[_page], textAlign: TextAlign.center ,style: new TextStyle(fontFamily: 'Monsterrat', fontWeight: FontWeight.w900),),
      ),
      body: new PageView(
          children: [
            new Dashboard(),
            new Stats(),
            AddGame()
          ],

          onPageChanged: _handlePageChange,
      ),


      /*body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',

            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),*/

      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        tooltip: 'Add New Game',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
