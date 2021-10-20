


import 'package:flutter/cupertino.dart';

class HeadCap extends CustomPainter{


  final Color color;
  HeadCap({this.color});


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    var height = size.height;
    var width = size.width;

    Paint  _paint = Paint()
       ..style = PaintingStyle.stroke
        ..color =color;



    //to curve the edge add relativeQuadraticBezierTo


    final path = Path()
   ..lineTo(0, height * 0.09)
    ..lineTo(width * 0.11, height * 0.09)
    ..lineTo(width * 0.15, height * 0.042)
    ..lineTo(width * 0.11, 0);



    final path2 = Path()
    ..moveTo(-10, 0)
    ..lineTo(width * 0.9, 0)
     ..lineTo(width * 1.15, height* 0.42)
      ..lineTo(width * 0.9,height * 0.9)
     ..lineTo( -10, height *0.9 )
       ..lineTo(width*0.11, height* 0.42);

    final path3 = Path()
    ..moveTo(width * 0.53, 0)
    ..lineTo(width * 0.8, 0)
    ..lineTo(width *0.8 , height * 0.09)
    ..lineTo(width *0.53, height * 0.09)
    ..lineTo(width *0.58, height * 0.042);



    //path.close();
    path2.close();
    //path3.close();

   // canvas.drawPath(path, _paint);
    canvas.drawPath(path2, _paint);
    //canvas.drawPath(path3, _paint);

  }

  @override
  bool shouldRepaint(HeadCap oldDelegate) {
    //
    return true;
  }




}