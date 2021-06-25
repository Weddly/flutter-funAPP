import 'package:flutter/material.dart';
import 'package:widget/models/piada_model.dart';

class ConteudoPage extends StatefulWidget {
  final List<PiadaModel> piadas;
  final String title;
  const ConteudoPage({Key? key, required this.piadas, required this.title})
      : super(key: key);

  @override
  _ConteudoState createState() => _ConteudoState();
}

class _ConteudoState extends State<ConteudoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 64,
            ),
            Text(
              (widget.piadas..shuffle()).first.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              (widget.piadas).first.answer,
            ),
          ],
        ),
      ),
    );
  }
}
