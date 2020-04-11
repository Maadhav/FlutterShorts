import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
       HomePage(),
      );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Snackbar Tutorial"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(100.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
                textColor: Colors.white,
                color: Colors.green,
                child: Text('Show SnackBar'),
                onPressed: () {
                  _showScaffold("This is a SnackBar.");
                },
              ),
        ),
      ),
    );
  }
}