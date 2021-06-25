import 'package:flutter/material.dart';
import 'package:widget/controllers/widget_controller.dart';

import 'conteudo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, required this.user})
      : super(key: key);

  final String title;
  final String user;

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
            Container(
              height: 86,
              margin: EdgeInsets.fromLTRB(6, 16, 6, 16),
              padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text.rich(TextSpan(
                  text: "Olá, ",
                  style: TextStyle(fontSize: 15),
                  children: [
                    TextSpan(
                        text: widget.user,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text: '. Com o que você quer ser divertir agora?',
                      style: TextStyle(fontSize: 15),
                    )
                  ])),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.sentiment_very_satisfied_outlined),
                title: Text('PIADA'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConteudoPage(
                              title: 'PIADA', piadas: controller.piadas!)));
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
