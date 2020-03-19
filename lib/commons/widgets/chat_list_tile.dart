import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListTile extends StatelessWidget {
  Icon icon;
  String title;
  String route;

  ChatListTile({this.icon, this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: ScreenUtil().setHeight(120),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 1),
        padding: EdgeInsets.all(6),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: ScreenUtil().setWidth(100),
              child: icon,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              width: ScreenUtil().setWidth(100),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      onTap: () {
        if (route != '' && route != null) {}
      },
    );
  }
}
