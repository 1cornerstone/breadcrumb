import 'package:breadcrumb/src/core/headcap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Crumbs extends StatelessWidget {

  final Icon prefixIcon;
  final String text;
  final TextStyle textStyle;

  const Crumbs({Key key, this.prefixIcon, this.text, this.textStyle}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.only(left: 3),
      child:CustomPaint(
       // size:  Size(double.infinity,double.infinity),
         painter: HeadCap(
        color: Colors.green,
      ),
        child:  Container(
         margin: const EdgeInsets.all(6),
         padding: EdgeInsets.only(left: 20,right: 10,bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text,style: textStyle,)
            ],
          ),

        ),
      ) ,
    );

  }
}
