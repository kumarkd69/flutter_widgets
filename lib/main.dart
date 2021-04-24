import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Text(
          'Sign in',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        minWidth: MediaQuery.of(context).size.width,
      ),
    );

    final txtField1 = TextField(
      textInputAction: TextInputAction.next,
      obscureText: false,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email',
        border: OutlineInputBorder(),
      ),
    );

    final txtField2 = TextField(
      onTap: () {
        Border.all(color: Colors.blue);
      },
      obscureText: true,
      style: GoogleFonts.montserrat(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        border: OutlineInputBorder(),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 6.0,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.asset('assets/1.png'),
              SizedBox(
                height: 5,
              ),
              // txtField1,
              SizedBox(
                height: 20,
              ),

//Screen 1 Navigation Code
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Push To Next',
                  style: GoogleFonts.montserrat(fontSize: 25.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ThirdPage();
                    },
                  ),
                );
              },
              child: Text('Pop to previous screen',
                  style: GoogleFonts.montserrat(fontSize: 25.0)),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('this is Thirdscreen',
                  style: GoogleFonts.montserrat(fontSize: 25.0)),
            ),
          ],
        ),
      ),
    );
  }
}
