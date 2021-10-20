

import 'package:breadcrumb/src/ui/Crumb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BreadCrumb extends StatefulWidget {

  final double width,height, breadSpace;
  final Color headCapColor ,endCapColor,activeIndexColor;
  final List<Crumbs> children;
  final bool isEndCap, isHeadCap;
  final int activeIndex;


  BreadCrumb(
      {Key key,
        this.width,
      this.height,
      this.breadSpace,
      this.headCapColor,
      this.endCapColor,
      this.activeIndexColor,
      this.children,
      this.isEndCap,
      this.isHeadCap,
      this.activeIndex}) :super(key: key);

  @override
  _BreadCrumbState createState() => _BreadCrumbState();
}





class _BreadCrumbState extends State<BreadCrumb> {


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      width: widget.width,
      alignment: Alignment.center,
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
         children: [
           widget.isHeadCap ?? widget.isEndCap ? Crumbs(
             text: "Home",
             prefixIcon: Icon(
               Icons.read_more_sharp,
               color: Colors.red,
             ),

           ):Text("no"),

           widget.isHeadCap ?? widget.isEndCap ? Crumbs(
             text: "Introduction",
             prefixIcon: Icon(
               Icons.read_more_sharp,
               color: Colors.red,
             ),

           ):Text("no"),
           widget.isHeadCap ?? widget.isEndCap ? Crumbs(
             text: "Installation",
             prefixIcon: Icon(
               Icons.read_more_sharp,
               color: Colors.red,
             ),

           ):Text("no"),
           widget.isHeadCap ?? widget.isEndCap ? Crumbs(
             text: "Architecture Application",
             prefixIcon: Icon(
               Icons.read_more_sharp,
               color: Colors.red,
             ),

           ):Text("no"),

           //widget.children,

          // widget.isEndCap ?? widget.isEndCap ? Text("end design") :Text("no end"),

         ]
      ),



    );

  }
}
