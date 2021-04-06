import 'package:flutter/material.dart';
import 'package:personal_web/constans/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Image.asset("emoji.png"),
    );
  }
}