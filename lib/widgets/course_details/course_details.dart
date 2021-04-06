import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
      sizingInformation.deviceScreenType == DeviceScreenType.Desktop
          ? TextAlign.left
          : TextAlign.center;
      double titleSize =
      sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? 60
          : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ?
      16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'SOFTWARE \nDEVELOPER',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Tecnico Superior en desarrollo de aplicaciones multiplataforma con un ano de experiencia en'
                  ' proyectos profesionales como freelancer trabajando directamente con los '
                  'clientes y realizando el proceso de negociacion, diseno, programacion y despliegue. Amplios conocientos en lenguajes Java, JavaScript y Dart con los frameworks Java EE, Spring Boot, React.js y Flutter entre otros.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}