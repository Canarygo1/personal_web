import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/experience/experience_card.dart';
import 'package:personal_web/widgets/proyects/section_title.dart';

class ExperienceDesktop extends StatelessWidget {
  final List<List<ExperienceInfo>> experiencies;

  ExperienceDesktop(this.experiencies);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 450.0,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: experiencies.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, i){
                      return Padding(
                        padding: EdgeInsets.all((MediaQuery.of(context).size.width -70 ) * 0.005),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.19,
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
