import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wechatclone/generated/i18n.dart';
import 'package:wechatclone/pages/contacts/contacts_list_tile.dart';

class ContactStaticGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _newFriends(context),
        _groupChats(context),
        _tags(context),
        _officialAccounts(context),
      ],
    );
  }

  Widget _newFriends(BuildContext context) {
    return ContactListTile(
      child: Icon(
        FontAwesomeIcons.userPlus,
        color: Colors.white,
        size: 20,
      ),
      contactName: S.of(context).contacts_new_friends,
      bgColor: Colors.orange,
    );
  }

  Widget _groupChats(BuildContext context) {
    return ContactListTile(
      child: Icon(
        FontAwesomeIcons.userFriends,
        color: Colors.white,
        size: 20,
      ),
      contactName: S.of(context).contacts_group_chats,
      bgColor: Colors.green,
    );
  }

  Widget _tags(BuildContext context) {
    return ContactListTile(
      child: Icon(
        FontAwesomeIcons.tag,
        color: Colors.white,
        size: 20,
      ),
      contactName: S.of(context).contacts_tags,
      bgColor: Colors.blue,
    );
  }

  Widget _officialAccounts(BuildContext context) {
    return ContactListTile(
      child: Icon(
        FontAwesomeIcons.user,
        color: Colors.white,
        size: 20,
      ),
      contactName: S.of(context).contacts_official_accounts,
      bgColor: Colors.blue,
    );
  }
}
