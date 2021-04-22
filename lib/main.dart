import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

void alertfunction(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        backgroundColor: Colors.amberAccent,
        title: Text('Contact Us'),
        content: Text(
            'mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.commail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.commail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com mail us at mai@google.com'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0, count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 6.0,
      ),
      body: Center(
          child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          TextButton(
              onPressed: () {
                alertfunction(context);
              },
              child: Text('Contact us')),
          Container(
            padding: EdgeInsets.all(10.0),
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Container 1',
              style: GoogleFonts.roboto(
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.amberAccent,
              border: Border.all(
                width: 1.0,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            height: 200.0,
            width: MediaQuery.of(context).size.width - 20,
            child: Text(
              'Container 2',
              style: GoogleFonts.roboto(
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent,
              border: Border.all(
                  width: 1.0, color: Colors.black, style: BorderStyle.solid),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Container 6',
                style: GoogleFonts.roboto(
                  fontSize: 20.0,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.pinkAccent,
                border: Border.all(
                    width: 1.0, color: Colors.black, style: BorderStyle.solid),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Container 3',
                style: GoogleFonts.roboto(
                  fontSize: 20.0,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.greenAccent,
                border: Border.all(
                    width: 1.0, color: Colors.black, style: BorderStyle.solid),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Container 4',
                style: GoogleFonts.roboto(
                  fontSize: 20.0,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purpleAccent,
                border: Border.all(
                    width: 1.0, color: Colors.black, style: BorderStyle.solid),
              ),
            ),
          )
        ],
      )),
    );
  }
}
