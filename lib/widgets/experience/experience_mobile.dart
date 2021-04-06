import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/experience/experience_card.dart';
import 'package:personal_web/widgets/proyects/section_title.dart';

class ExperienceMobile extends StatelessWidget {
  final List<List<ExperienceInfo>> experiencies;

  ExperienceMobile(this.experiencies);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionTitle("Experiencia y Estudios"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: experiencies.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, i){
                      return Container(
                        child: Column(
                          children: [

                            Text((int.parse("2018")+i).toString(),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )),
                            ListView.builder(
                                itemCount: experiencies[i].length,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder:(context, y) {
                                  return ExperienceCard(experiencies[i][y]);
                                }
                            ),
                          ],
                        ),
                      );
                    }
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}
