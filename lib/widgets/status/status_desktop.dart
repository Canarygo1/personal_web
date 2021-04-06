import 'package:flutter/material.dart';
import 'package:personal_web/widgets/status/status_item.dart';

class StatusDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatusItem("30+","proyectos"),
          Icon(Icons.circle ,size: 7,color: Colors.grey.shade200,),
          StatusItem("1","Anos Experiencia"),
          Icon(Icons.circle ,size: 7,color: Colors.grey.shade200,),

          StatusItem("6+", "Apps publicadas"),
          Icon(Icons.circle ,size: 7,color: Colors.grey.shade200,),

          StatusItem("6","Lenguajes dominados"),
        ],
      ),
    );
  }
}
