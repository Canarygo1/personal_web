import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceInfo experienceInfo;

  ExperienceCard(this.experienceInfo);

  @override
  Widget build(BuildContext context) {
    return experienceCard(experienceInfo.title,experienceInfo.subtitle,experienceInfo.img_url);
  }
}
Card experienceCard(String title, String subtitle, String img_url) {
  return Card(elevation: 3,
    color: Colors.white,
    child: Container(
        width: 200,
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(img_url, fit: BoxFit.fitWidth,),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    Text(subtitle,
                      style: TextStyle(
                          color: Colors.grey
                      ),),
                  ],
                ),
              ),
            ),

          ],
        )),
  );
}
