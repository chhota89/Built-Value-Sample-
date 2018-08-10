import 'package:flutter/material.dart';
import 'package:built_value_sample/network.dart' as network;
import 'package:built_value_sample/model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> articleIds = [
    17612030,
    17610669,
    17609974,
    17603348,
    17607095,
    17611766,
    17611709,
    17604533,
    17600503,
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Haker News"),
        ),
        body: FutureBuilder<List<Article>>(
            future: network.getListOfArticle(articleIds),
            builder: (BuildContext context, AsyncSnapshot<List<Article>> snap) {
              if (snap.hasData) {
                return ListView.builder(
                    itemCount: snap.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return new ListTile(
                        title: Text(snap.data[index].title),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
