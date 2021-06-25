import 'package:flutter/material.dart';
import 'package:widget/controllers/widget_controller.dart';

import 'conteudo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = WidgetController();

  @override
  void initState() {
    super.initState();
    controller.getPiadas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.sentiment_very_satisfied_outlined),
                title: Text('PIADA'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConteudoPage(
                              title: "PIADA", piadas: controller.piadas!)));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.help_outline),
                title:
                    Text('CURIOSIDADE', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.format_quote_outlined),
                title: Text('HAIKAI', style: TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ));
  }
}
