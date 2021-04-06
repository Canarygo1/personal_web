import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/models/Project.dart';
import 'package:personal_web/models/project_Button_data.dart';
import 'package:personal_web/widgets/proyects/project_item.dart';
import 'package:personal_web/widgets/proyects/section_title.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Project> projects = [];
    ProjectButtonData reservaloButtonsDemo = ProjectButtonData("Demo", "https://www.reservalo.app/");
    ProjectButtonData reservaloButtonsPrensa = ProjectButtonData("Prensa", "https://u-tad.com/trabajos-de-alumnos/reservalo");
    ProjectButtonData reservaloCodigo = ProjectButtonData("Prensa", "https://github.com/Canarygo1/cutHair");
    List<ProjectButtonData> reservaloButtons = [reservaloCodigo,reservaloButtonsDemo,reservaloButtonsPrensa];
    ProjectButtonData omsButtonsDemo = ProjectButtonData("Contacto", "https://www.reservalo.app/");
    ProjectButtonData omsButtonsPrensa = ProjectButtonData("Prensa", "https://elandroidelibre.elespanol.com/2020/12/la-app-de-informacion-de-covid-19-de-la-oms-ya-disponible-para-android.html");
    ProjectButtonData omsCodigo = ProjectButtonData("Prensa", "https://github.com/WorldHealthOrganization/app");
    List<ProjectButtonData> omsButtons = [omsButtonsDemo,omsCodigo,omsButtonsPrensa];

    Project reservalo = Project("App de reservas para peluquerias, discotecas y restaurantes","reservalo.png",["IOS","Android","Web","Api"],reservaloButtons);
    Project oms = Project("App de informacion sobre coronavirus, para este proyecto fui contactado directamente por el jefe de tecnologia en la campana de Barack Obama","oms_logo.jpg",["IOS","Android"],omsButtons);
    Project discarten = Project("Eccomerce para la venta de productos a domicilio con web, app y api propios. Usando tecnologias como Docker, Kubernetes, React.js, Java con Jwt, Flutter y PostgreSql.","discarten_full_icon.png",["IOS","Android","Web","Api"],reservaloButtons);
    Project madremiaRoll = Project("Carta Qr online con historias tipo instagram para ver los platos, disponible en varios idiomas.","madremia.png",["Web"],reservaloButtons);
    Project guachinchesTenerife = Project("App para valorar guachinches en Tenerife tecnologias usadas Java y Flutter, actualmente en proceso de desarrollo.","guachinches_logo.png",["IOS","Android","Web","Api"],reservaloButtons);
    Project dashboardAtani = Project("Desarrollo como estudiante en practicas en una de las mejores 100 StartUps del 2020 de un dashboard para administrar aspectos de criptomodeas, CCXT, Exchange, etc.","atani_logo.png",["Web","Api"],reservaloButtons);

    projects.add(reservalo);
    projects.add(oms);
    projects.add(discarten);
    projects.add(madremiaRoll);
    projects.add(guachinchesTenerife);
    projects.add(dashboardAtani);
    return ResponsiveBuilder(
      builder:(context, sizingInformation) {
        double viewPort =
        sizingInformation.deviceScreenType == DeviceScreenType.tablet
            ? 0.8
            : 0.40;
        return Column(
          children: [
            SizedBox(
              height: 400,
              child: CarouselSlider.builder(
                itemCount: projects.length,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 10,
                  viewportFraction: viewPort,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (BuildContext context, int index, int test) =>
                    ProjectItem(projects[index].description,projects[index].img_url,projects[index].techs,projects[index].projectButtonData),
              ),
            ),
          ],
        );
      });
  }
}
