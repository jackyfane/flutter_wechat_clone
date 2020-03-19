import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wechatclone/commons/icons/iconfont.dart';
import 'package:wechatclone/commons/widgets/chat_list_tile.dart';
import 'package:wechatclone/generated/i18n.dart';

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          _profile(),
          SizedBox(height: 10),
          ChatListTile(
            icon: Icon(IconFonts.wechat_pay, color: Colors.green),
            title: S.of(context).me_pay,
          ),
          SizedBox(height: 10),
          ChatListTile(
            icon: Icon(Icons.camera, color: Colors.blue),
            title: S.of(context).me_favorite,
          ),
          ChatListTile(
            icon: Icon(Icons.picture_in_picture, color: Colors.blue),
            title: S.of(context).me_posts,
          ),
          ChatListTile(
            icon: Icon(Icons.face, color: Colors.pinkAccent),
            title: S.of(context).me_sticker,
          ),
          SizedBox(height: 10),
          ChatListTile(
            icon: Icon(Icons.settings, color: Colors.blue),
            title: S.of(context).me_settings,
          ),
        ],
      ),
    );
  }

  Widget _profile() {
    return Container(
      height: ScreenUtil().setHeight(430),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _camera(),
          SizedBox(height: 20),
          ListTile(
            leading: Container(
              width: ScreenUtil().setWidth(160),
              height: ScreenUtil().setHeight(240),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                image: DecorationImage(
                  image: AssetImage('images/me.JPG'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: Text(
                '摇马郎',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Container(
              child: Text('ID:yaomalang@gmail.com'),
            ),
            trailing: Container(
              width: 50,
              height: 50,
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.orcid,
                    size: 24,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _camera() {
    return Container(
      alignment: Alignment.bottomRight,
      height: ScreenUtil().setHeight(180),
      margin: EdgeInsets.only(right: 20),
      child: InkWell(
        child: Icon(
          FontAwesomeIcons.camera,
          size: 20,
        ),
        onTap: () {},
      ),
    );
  }
}
