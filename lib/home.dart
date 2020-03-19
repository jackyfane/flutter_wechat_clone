import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:wechatclone/commons/icons/iconfont.dart';
import 'package:wechatclone/generated/i18n.dart';
import 'package:wechatclone/pages/chats.dart';
import 'package:wechatclone/pages/contacts.dart';
import 'package:wechatclone/pages/discover.dart';
import 'package:wechatclone/pages/me.dart';
import 'package:wechatclone/provider/bottom_nav_provider.dart';

class HomePage extends StatelessWidget {
  final List<Widget> _bodies = [Chats(), Contacts(), Discover(), Me()];

  Widget _currentBody(BuildContext context) {
    return _bodies[Provider.of<BottomNavProvider>(context).selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      body: _currentBody(context),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          Provider.of<BottomNavProvider>(context, listen: false)
              .setIndex(index);
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: Provider.of<BottomNavProvider>(context).selectedIndex,
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            title: Text(S.of(context).chats),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFonts.contacts),
            title: Text(S.of(context).contacts),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFonts.discover),
            title: Text(S.of(context).discover),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFonts.me),
            title: Text(S.of(context).me),
          ),
        ],
      ),
    );
  }
}
