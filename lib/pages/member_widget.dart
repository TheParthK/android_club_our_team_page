import 'dart:ui';

import 'package:android_club_redesign/pages/member_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemeberWidget extends StatefulWidget {
  final MemberModel details;
  const MemeberWidget({
    super.key,
    required this.details
  });

  @override
  State<MemeberWidget> createState() => _MemeberWidgetState();
}

class _MemeberWidgetState extends State<MemeberWidget> {
  bool viewMoreInfo = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: GestureDetector(
        onTap: () => setState(() {
          viewMoreInfo = !viewMoreInfo;
        }),
        child: Container(
          height: 130,
          width: size.width,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 232, 232),
            // color: Colors.transparent,
            // color: const Color.fromARGB(29, 232, 232, 232),
            // color: Color(0xFFD1E1D9),
            // color: Color(0xFF22905b),
            border: Border.all(width: 1, color: const Color.fromARGB(7, 0, 0, 0)),
            borderRadius: const BorderRadius.all(Radius.circular(21)),
            boxShadow: const [
              BoxShadow(blurRadius: 20, color: Color.fromARGB(15, 0, 0, 0))
            ]
          ),
          child: Row(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.horizontal(left: Radius.circular(20)),
                  image: DecorationImage(image: NetworkImage(widget.details.image), fit: BoxFit.cover)
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                // color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: Text('${widget.details.firstName}\n${widget.details.lastName}', style: const TextStyle(fontFamily: 'RobotoB', fontSize: 22, color: Colors.black),),
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          widget.details.position,
                          style: const TextStyle(
                            fontFamily: 'RobotoR',
                            color: Color.fromARGB(255, 141, 141, 141)
                          ),
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}