import 'package:flutter/material.dart';

class RespostaButton extends StatefulWidget {
  final String resposta;
  final String title;
  const RespostaButton({Key? key, required this.resposta, required this.title})
      : super(key: key);

  @override
  _ConteudoState createState() => _ConteudoState();
}

class _ConteudoState extends State<RespostaButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        final snackBar = SnackBar(
            content: Text(
          widget.resposta,
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      // The custom button

      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(widget.title),
      ),

      // child: Icon(
      //   Icons.remove_red_eye_sharp,
      //   color: Colors.grey,
      //   size: 40,
      // )
    );
  }
}
