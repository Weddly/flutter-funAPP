import 'package:flutter/material.dart';
import 'package:widget/views/home.dart';
import 'dart:ui';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 128,
            ),
            Container(
              height: 86,
              margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
              padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
              alignment: Alignment.center,
              child: Text('Fun APP',
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 86,
              margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
              padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
              alignment: Alignment.center,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu nome',
                ),
                controller: _controller,
                onChanged: (String value) {
                  this.nome = value;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyHomePage(title: 'Fun APP', user: this.nome)));
                },
                child: const Text('Entrar')),
          ],
        ),
      ),
    );
  }
}
