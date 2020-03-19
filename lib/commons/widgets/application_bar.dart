import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  String title;

  CustomAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: ScreenUtil().setHeight(230),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 80,
            child: Container(
              width: ScreenUtil().setWidth(60),
              alignment: Alignment.center,
              child: InkWell(
                child: Icon(Icons.search),
                onTap: () {},
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: ScreenUtil().setWidth(60),
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 10),
              child: InkWell(
                child: Icon(Icons.add_circle_outline),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}