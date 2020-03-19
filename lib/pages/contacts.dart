import 'package:flutter/material.dart';
import 'package:wechatclone/commons/widgets/wechat_scaffold.dart';
import 'package:wechatclone/pages/contacts/contacts_alphabet_anchor.dart';
import 'package:wechatclone/pages/contacts/contacts_static_groups.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeChatScaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: <Widget>[
            ContactStaticGroups(),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.12,
              right: 6,
              child: AlphabetAnchor(),
            )
          ],
        ),
      ),
    );
  }
}
