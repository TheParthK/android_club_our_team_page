import 'dart:ui';

import 'package:android_club_redesign/pages/member_model.dart';
import 'package:android_club_redesign/pages/member_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OurTeamPage extends StatelessWidget {
  const OurTeamPage({super.key});
  final List<MemberModel> people = const [
    MemberModel(firstName: 'Robert', lastName: 'Pattinson', position: 'President, Android Club', image: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/06/02/908051-robert-pattinson.jpg'),
    MemberModel(firstName: 'Sydney', lastName: 'Sweeney', position: 'Vice President, Android Club',image: 'https://media.vogue.co.uk/photos/63b43e1a3e6e0b3d96752b01/1:1/w_3352,h_3352,c_limit/GA_2023-My-Way-Parfum_Sydney-Sweeney_Beauty-Visual-3_RVB-2.jpg'),
    MemberModel(firstName: 'Tangerine', lastName: '', position: 'Lead, Android Team', image: 'https://sportshub.cbsistatic.com/i/2022/03/19/961e2316-e95d-4a6e-bf28-92b784563dd7/bullet-train.jpg'),
    MemberModel(firstName: 'Leonardo', lastName: 'DiCaprio', position: 'Lead, SDC', image: 'https://yt3.googleusercontent.com/0KzJzqDqJ5ZUXmrsrBG21Snu5aIcnC0Rj5VRNxa6aiCDIhN2R3kw_KMHPMK1SzcYedD2o9FQeQ=s900-c-k-c0x00ffffff-no-rj'),
    MemberModel(firstName: 'Lady', lastName: 'Bug', position: 'Lead, Design Team', image: 'https://www.citimuzik.com/wp-content/uploads/2023/02/brad-pitt-statement-810x486.webp'),
    MemberModel(firstName: 'Tangerine', lastName: '', position: 'Lead, Android Team', image: 'https://sportshub.cbsistatic.com/i/2022/03/19/961e2316-e95d-4a6e-bf28-92b784563dd7/bullet-train.jpg'),
    MemberModel(firstName: 'Leonardo', lastName: 'DiCaprio', position: 'Lead, SDC', image: 'https://yt3.googleusercontent.com/0KzJzqDqJ5ZUXmrsrBG21Snu5aIcnC0Rj5VRNxa6aiCDIhN2R3kw_KMHPMK1SzcYedD2o9FQeQ=s900-c-k-c0x00ffffff-no-rj'),
    MemberModel(firstName: 'Lady', lastName: 'Bug', position: 'Lead, Design Team', image: 'https://www.citimuzik.com/wp-content/uploads/2023/02/brad-pitt-statement-810x486.webp'),
    
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    Size size = MediaQuery.of(context).size;
    double safeAreaTopPadding = MediaQuery.of(context).padding.top; 
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ClipPath(
              clipper: Clipper5(),
              child: Container(
                color: Color(0xFFD1E1D9),
                height: size.height/1.2,
                
              ),
            ),
            ClipPath(
              clipper: Clipper4(),
              child: Container(
                color: Color(0xFF22905B),
                height: size.height/2,
                
              ),
            ),
            ClipPath(
              clipper: Clipper3(),
              child: Container(
                color: Color(0xFF1137143),
                height: size.height/5,
                
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(height: safeAreaTopPadding + 50),
                Container(
                  width: size.width,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  // color: Colors.green,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      // SizedBox(width: 50,),
                      Text('Meet the Team', style: TextStyle(fontFamily: 'RobotoB', fontSize: 27, color: Colors.white),),
                    ],
                  ),
                ),
                ...people.map((e) => MemeberWidget(details: e))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: safeAreaTopPadding + 8, left: 8, right: 8),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                    // color: Color.fromARGB(255, 0, 0, 0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                  ),
                  child: const Center(
                    child: Icon(CupertinoIcons.chevron_back, color: Color.fromARGB(255, 0, 0, 0),),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class Clipper3 extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    // 0, 0 is top left, normal first 
    Path path = Path();
    path.lineTo(0, 20);
    // path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width/1.5, size.height, size.width, size.height/1.2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Clipper4 extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    // 0, 0 is top left, normal first 
    Path path = Path();
    path.lineTo(0, size.height/2);
    // path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width/1.5, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
class Clipper5 extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    // 0, 0 is top left, normal first 
    Path path = Path();
    path.lineTo(0, size.height/1.5);
    // path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width/1.5, size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}