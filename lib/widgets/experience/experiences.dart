import 'package:flutter/material.dart';
import 'package:personal_web/models/ExperienceInfo.dart';
import 'package:personal_web/widgets/experience/experiencie_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'experience_mobile.dart';

class Experiences extends StatelessWidget {
  final List<List<ExperienceInfo>> experiences;

  Experiences(this.experiences);

  @override
  Widget build(BuildContext context) {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      ScreenBreakpoints(desktop: 1150, tablet: 550, watch: 200),
    );
    return ScreenTypeLayout(
      mobile: ExperienceMobile(experiences),
      desktop: ExperienceDesktop(experiences),
    );  }
}
