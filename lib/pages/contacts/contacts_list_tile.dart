import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactListTile extends StatelessWidget {
  Widget child;
  String contactName;
  Color bgColor;
  String routePath;

  ContactListTile({this.child, this.contactName, this.bgColor, this.routePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: ScreenUtil().setHeight(120),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              height: ScreenUtil().setHeight(90),
              width: ScreenUtil().setHeight(90),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: child,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  contactName,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
