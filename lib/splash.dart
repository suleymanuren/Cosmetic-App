import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kozmetik/responsive.dart';
import 'Kozmetik.dart';

import 'package:table_calendar/table_calendar.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    saveSharedLoggingControl();
  }

  Future saveSharedLoggingControl() async {
    Future.delayed(Duration(seconds: 3), () {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Kozmetik()));
    });
  }

  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
            
   backgroundColor: Colors.white.withOpacity(.97),
      body: Align(
        child: Column(

          children: [

            Expanded(

              flex: 4,

              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .5,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 100.0,left: 0),
                      child: Container(
                        height: SizeConfig.screenHeight*1,
                        width: SizeConfig.screenWidth*1,

                        decoration: const BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://ekutuphane.subu.edu.tr/yordam/kurumsal/logo.png",),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth*.9,
                height: SizeConfig.screenHeight * .3,
                child: Text("RAPOR SPLASH EKRANI")

                ),
              ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .3,
                child: Text(
                  "Version: SÜLEYMAN ÜREN ",
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "primaryFont",
                    fontSize: SizeConfig.screenWidth * .04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
