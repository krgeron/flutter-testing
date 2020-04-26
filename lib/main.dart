import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'album.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter sDemo',
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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Applications'),
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

  final List<Album> albums = [
    Album(id: "1", userId: "Kenny Ric Geron", title: "Software Developer"),
    Album(id: "2", userId: "Ericson Padol", title: "Software Developer"),
    Album(id: "3", userId: "Kirk Fadri", title: "Software Developer"),
    Album(id: "4", userId: "Chester Luzon", title: "Software QA"),
    Album(id: "5", userId: "Art Bajacan", title: "BO Director"),
    Album(id: "6", userId: "Fernan Gapuz", title: "Software Engineering Manager"),
    Album(id: "6", userId: "Ariel Chiong", title: "Software Developer"),
    Album(id: "6", userId: "Wilson Bautista", title: "Software Developer"),
    Album(id: "6", userId: "Kayla Suarez", title: "Software QA"),
    Album(id: "6", userId: "Jervis Samudio", title: "Software QA"),
    Album(id: "6", userId: "Lex Bautista", title: "Software Developer"),
    Album(id: "6", userId: "Anthony Diaz", title: "Software Developer"),
    Album(id: "6", userId: "Rolly Balicas", title: "Software Developer"),
    Album(id: "6", userId: "Ken Villas", title: "Software Developer"),
    Album(id: "6", userId: "Garmond Omale Jr.", title: "Software Architect")
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: albums.length,
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(albums[idx].userId),
                subtitle: Text(albums[idx].title),
                onTap: () => {
                  print(context)
                },
              );
            },
          )
    );
  }
}