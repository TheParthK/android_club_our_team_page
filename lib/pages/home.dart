import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets safeAreaPadding = MediaQuery.of(context).padding;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 65 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   // color: Colors.white,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: const [
                //       Text('Hey There,', style: TextStyle(fontFamily: 'RobotoThin', fontSize: 12, color: Color.fromARGB(255, 58, 58, 58)),),
                //       SizedBox(height: 1,),
                //       Text('Parth', style: TextStyle(fontFamily: 'RobotoB', fontSize: 25),)
                //     ],
                //   ),
                // ),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(21, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 0.75, color: Colors.black)
                      ),
                      child: const Center(
                        child: Icon(CupertinoIcons.ellipsis_vertical),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 65,
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/logo.png'), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 0.75, color: Colors.black)
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 65,
                  height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(image: NetworkImage('https://media1.popsugar-assets.com/files/thumbor/kRHOD_VRocEvhfhkC5j8WNTQgAY/569x195:2942x2568/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/12/09/863/n/1922398/fce2eeaf5deea3c3b39189.70140056_/i/Grant-Gustin.jpg')),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 0.75, color: Colors.black)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}