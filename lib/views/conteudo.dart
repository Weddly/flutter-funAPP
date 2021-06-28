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
              height: 256,
            ),
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
                child: Text(
                  (widget.piadas..shuffle()).first.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text((widget.piadas).first.answer,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Exibir resposta")),
            // RespostaButton(
            //     resposta: (widget.piadas).first.answer, title: 'On tap'),
          ],
        ),
      ),
    );
  }
}
