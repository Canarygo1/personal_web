import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/call_to_action/call_to_action.dart';
import 'package:personal_web/widgets/course_details/course_details.dart';
import 'package:personal_web/widgets/experience/experiences.dart';
import 'package:personal_web/widgets/experience/experiencie_desktop.dart';
import 'package:personal_web/widgets/proyects/projects.dart';
import 'package:personal_web/widgets/status/status_mobile.dart';

class HomeContentMobile extends StatelessWidget {
  final List<List<ExperienceInfo>> experiences;

  HomeContentMobile(this.experiences);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CallToAction('Join Course'),
        CourseDetails(),
        SizedBox(height: 50,),
        StatusMobile(),
        SizedBox(height: 50,),
        Projects(),
        SizedBox(height: 50,),
        Experiences(experiences),
      ],
    );
  }
}