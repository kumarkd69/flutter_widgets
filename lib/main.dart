import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'branch1'),
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
  int count = 0, count2 = 0;
  int _selectedIndex = 0;

  static const TextStyle OptionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0:Home',
      style: OptionStyle,
    ),
    Text(
      'Index 1: Business',
      style: OptionStyle,
    ),
    Text(
      'Index 2: Organization',
      style: OptionStyle,
    ),
    Text(
      'Index 3: Organization',
      style: OptionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) => Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 300,
                    color: Colors.red,
                  ));
        },
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),

/*        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 30.0),
                  onPressed: () {
                    setState(() {
                      count2 += 1;
                    });
                    print('Button Clicked');
                  },
                  child: Text(
                    ' Clickable Button',
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      count += 1;
                    });
                  },
                  icon: Icon(Icons.favorite_outline_sharp),
                  iconSize: 100.0,
                  color: Colors.red,
                ),
                Text(
                  '$count',
                ),
                Icon(
                  Icons.umbrella_rounded,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.umbrella_rounded,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Text(
                  '$count2',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
          ]),
        ),
      */
      ), /*
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),*/
      /*   floatingActionButton: FloatingActionButton(
        splashColor: Colors.amber,
        backgroundColor: Colors.black,
        onPressed: () {
          print('Floating Button Clicked');
        },
        child: Icon(
          Icons.wifi,
          color: Colors.white,
        ),
      ),*/
    );
  }
}
