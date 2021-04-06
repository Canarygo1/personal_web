import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/call_to_action/call_to_action.dart';
import 'package:personal_web/widgets/contact/contact_photo.dart';
import 'package:personal_web/widgets/contact/contact_text.dart';
import 'package:personal_web/widgets/course_details/course_details.dart';
import 'package:personal_web/widgets/experience/experiences.dart';
import 'package:personal_web/widgets/experience/experiencie_desktop.dart';
import 'package:personal_web/widgets/proyects/projects.dart';
import 'package:personal_web/widgets/proyects/section_title.dart';
import 'package:personal_web/widgets/status/status_desktop.dart';

class HomeContentDesktop extends StatelessWidget {
  final List<List<ExperienceInfo>> experiences;


  HomeContentDesktop(this.experiences);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: <Widget>[
            CourseDetails(),
            Expanded(
              child: Center(
                child: CallToAction('Join Course'),
              ),
            ),
          ],
        ),
        SizedBox(height: 100,),
        StatusDesktop(),
        SizedBox(height: 100,),
        SectionTitle("Proyectos"),
        SizedBox(height: 50,),

        Projects(),
        SizedBox(height: 100,),
        SectionTitle("Experiencia y Estudios"),
        SizedBox(height: 50,),
        Experiences(experiences),
        SizedBox(height: 100,),
        SectionTitle("Contacto"),
        SizedBox(height: 50,),
        Row(
          children: <Widget>[
            ContactPhoto(),
            Expanded(
              child: Center(
                child: ContactText(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}