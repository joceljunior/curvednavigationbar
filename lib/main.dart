import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      theme: ThemeData.dark(),
      home: HomePage(title: 'Navigator Bar'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.people,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.add_a_photo,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.headset_rounded,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.contact_phone,
            size: 30.0,
            color: Colors.white,
          )
        ],
      ), // é um pacote adicionado pelo pub get
    );
  }
}
