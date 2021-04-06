import 'package:flutter/material.dart';
import 'package:personal_web/models/project_Button_data.dart';
import 'dart:html' as html;

class ProjectItem extends StatelessWidget {
  final String decription;
  final String img_url;
  final List<String> techs;
  final List<ProjectButtonData> buttons;

  ProjectItem(this.decription, this.img_url, this.techs, this.buttons);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
    ),
      width: 300,
      child:Padding(
        padding: const EdgeInsets.only(top:8.0,left: 8.0,right: 8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
                height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage(img_url)
                ),),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: Text(decription),
            ),
            SizedBox(height: 30,),
            Container(
              height: 20,
              alignment: Alignment.center,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: techs.length,
                    shrinkWrap: true,
                    itemBuilder:(context, i){ return Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Text(techs[i]),
                    )
                    ;}),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 30,
              alignment: Alignment.center,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: buttons.length,
                    shrinkWrap: true,
                    itemBuilder:(context, i){ return Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: ElevatedButton(
                        onPressed: ()=>
                            html.window.open(buttons[i].url, 'new tab')
                        ,
                        child: Text(buttons[i].name),
                      ),
                    )
                    ;}),
              ),
            ),


          ],
        ),
      )    );
  }
}
