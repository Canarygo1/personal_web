import 'package:personal_web/models/project_Button_data.dart';

class Project{
  String description;
  String img_url;
  List<String> techs;
  List<ProjectButtonData> projectButtonData;

  Project(this.description, this.img_url, this.techs, this.projectButtonData);
}