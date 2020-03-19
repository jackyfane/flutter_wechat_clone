import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:wechatclone/commons/routes/router_handler.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return Container(
          child: Text('Error'),
        );
      },
    );

    router.define('/contacts/new_friends', handler: RouteHandlers.newFriends);
    router.define('/contacts/group_chats', handler: RouteHandlers.groupChats);
    router.define('/contacts/tags', handler: RouteHandlers.tags);
    router.define('/contacts/official_accounts', handler: RouteHandlers.officialAccounts);
  }
}
