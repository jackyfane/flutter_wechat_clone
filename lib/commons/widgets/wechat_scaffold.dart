import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wechatclone/provider/bottom_nav_provider.dart';

class WeChatScaffold extends StatelessWidget {
  final Widget body;

  WeChatScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title:
            Text(Provider.of<BottomNavProvider>(context).appBarTitle(context)),
        actions: <Widget>[
          Container(
            width: ScreenUtil().setWidth(120),
            alignment: Alignment.center,
            child: InkWell(
              child: Icon(Icons.search),
              onTap: () {},
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(80),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.add_circle_outline),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: body,
    );
  }
}
