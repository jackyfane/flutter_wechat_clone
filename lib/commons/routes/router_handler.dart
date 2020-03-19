import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:wechatclone/pages/contacts/contacts_group_chats.dart';
import 'package:wechatclone/pages/contacts/contacts_newfriends.dart';
import 'package:wechatclone/pages/contacts/contacts_official_accounts.dart';
import 'package:wechatclone/pages/contacts/contacts_tags.dart';

class RouteHandlers {
  static Handler newFriends = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return NewFriends();
    },
  );

  static Handler groupChats = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return GroupChats();
    },
  );

  static Handler tags = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Tags();
    },
  );

  static Handler officialAccounts = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return OfficialAccounts();
    },
  );
}
