import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/NavigationBar/navigation_bar.dart';
import 'package:personal_web/widgets/call_to_action/call_to_action.dart';
import 'package:personal_web/widgets/centered_view/centered_view.dart';
import 'package:personal_web/widgets/course_details/course_details.dart';
import 'package:personal_web/widgets/drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<List<ExperienceInfo>> experiences = [];
    ExperienceInfo tecnicoMedio = ExperienceInfo("1 Tecnico Medio SMR", "Estudio de sistemas microinformaticos y redes (nota media: 7,2)", "santa_ana_logo.png");
    ExperienceInfo intech = ExperienceInfo("Curso de Emprendiento y marketing", "Titulado por Intech tenerife en emprendimiento en el sector de los videojuegos ", "intech_logo.png");
    ExperienceInfo tecnicoMedio2 = ExperienceInfo("2 Tecnico Medio SMR", "Estudio de sistemas microinformaticos y redes (nota media: 8,0)", "santa_ana_logo.png");
    ExperienceInfo GCD = ExperienceInfo("Google Cloud Developer Spain", "Asistencia al evento nacional de desarrolladores de Google", "google_logo.png");
    ExperienceInfo tecnicoSuperior = ExperienceInfo("1 tecnico Superior DAM", "Estudios de desarrollo de aplicaciones multiplataforma", "cesar_manrique_logo.jpg");
    ExperienceInfo ibm = ExperienceInfo("IBM quantum computing", "Asistencia al evento de computacion cuantica de IBM", "ibm_logo.jpg");
    ExperienceInfo tecnicoSuperior2 = ExperienceInfo("2 tecnico Superior DAM", "Estudios de desarrollo de aplicaciones multiplataforma en la U-tad considerada la mejor universidad tecnologica de Espana", "u-tad_logo.png");
    ExperienceInfo atani = ExperienceInfo("Programador para Atani", "Desarrollador React.js y Express.js, mentorizado por el CEO y CTO de la prestigiosa fintech Atani", "atani_logo.png");
    ExperienceInfo reservalo = ExperienceInfo("CEO de Reservalo", "CEO acargo de 4 desarrolladores de un proyecto piloto de reservas de citas", "reservalo_icon.png");
    ExperienceInfo discarten = ExperienceInfo("Programador Freelancer Discaten", "React.js, Java, Dart. Diseno, desarrollo y despliegue de un eccomerce (Web y movil) desde 0.", "discarten_logo.png");
    ExperienceInfo guachinchesModernos = ExperienceInfo("Programador Freelancer Guachinches Modernos", "Dart y Java. Diseno, desarrollo y despliegue de app (Dashboard y movil) desde 0", "guachinches_logo.png");
    List<ExperienceInfo> experience2018 = [tecnicoMedio,intech,GCD];
    List<ExperienceInfo> experience2019 = [tecnicoMedio2, tecnicoSuperior, ibm];
    List<ExperienceInfo> experience2020 = [tecnicoSuperior2,atani,reservalo];
    List<ExperienceInfo> experience2021 = [discarten, guachinchesModernos];
    experiences.add(experience2018);
    experiences.add(experience2019);
    experiences.add(experience2020);
    experiences.add(experience2021);
    return ResponsiveBuilder(
      builder: (context, sizingInformation)=> Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Row(children: [
                    Expanded(
                      child: ScreenTypeLayout(
                        mobile: HomeContentMobile(experiences),
                        desktop: HomeContentDesktop(experiences),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}