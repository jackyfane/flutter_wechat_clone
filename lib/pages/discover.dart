import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wechatclone/commons/widgets/chat_list_tile.dart';
import 'package:wechatclone/commons/widgets/wechat_scaffold.dart';
import 'package:wechatclone/generated/i18n.dart';
import 'package:wechatclone/commons/icons/iconfont.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeChatScaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Container(
          child: Column(
            children: <Widget>[
              _moments(context),
              SizedBox(height: 10),
              _scan(context),
              _shake(context),
              SizedBox(height: 10),
              _search(context),
              SizedBox(height: 10),
              _nearby(context),
              SizedBox(height: 10),
              _miniPrograms(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moments(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        IconFonts.moments,
        color: Colors.lightBlue,
        size: 20,
      ),
      title: S.of(context).discover_moments,
    );
  }

  Widget _scan(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        IconFonts.scan,
        color: Colors.lightBlue,
        size: 20,
      ),
      title: S.of(context).discover_scan,
    );
  }

  Widget _shake(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        IconFonts.shake,
        color: Colors.lightBlue,
        size: 20,
      ),
      title: S.of(context).discover_shake,
    );
  }

  Widget _search(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        Icons.search,
        color: Colors.pinkAccent,
        size: 20,
      ),
      title: S.of(context).discover_search,
    );
  }

  Widget _nearby(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        IconFonts.people_nearby,
        color: Colors.lightBlue,
        size: 20,
      ),
      title: S.of(context).discover_shake,
    );
  }

  Widget _miniPrograms(BuildContext context) {
    return ChatListTile(
      icon: Icon(
        IconFonts.mini_program,
        color: Colors.lightBlue,
        size: 20,
      ),
      title: S.of(context).discover_mp,
    );
  }
}
