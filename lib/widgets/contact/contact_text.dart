import 'package:flutter/material.dart';

class ContactText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Estare encantado de atenderte!",
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w800,
            height: 0.9,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Icon(Icons.email,size: 30,),
            Text(
              "Email:",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: 25,
              ),
            ),
            Flexible(
              child: SelectableText(
                "alecruzdev@gmail.com",
                style: TextStyle(
                  height: 0.9,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.phone,size: 40,),
            Text(
              "Telefono:",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: 40,
              ),
            ),
            Flexible(
              child: SelectableText(
                "607977602",
                style: TextStyle(
                  height: 0.9,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
