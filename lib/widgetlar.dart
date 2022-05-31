import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  const Widgets({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Süleyman",style: TextStyle(fontSize: 30),),
           Text("Üren",style: TextStyle(fontSize: 30),),
           Text("Staj",style: TextStyle(fontSize: 30),),
           Text("Raporu",style: TextStyle(fontSize: 30),),
         ],
        ),
      ),
    );
  }
}