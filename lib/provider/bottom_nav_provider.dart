import 'package:flutter/cupertino.dart';
import 'package:wechatclone/generated/i18n.dart';

class BottomNavProvider with ChangeNotifier {
  int selectedIndex = 0;

  BottomNavProvider();

  void setIndex(int index) {
    selectedIndex = index;

    notifyListeners();
  }

  String appBarTitle(BuildContext context) {
    if (selectedIndex == 0) {
      return S.of(context).chats;
    } else if (selectedIndex == 1) {
      return S.of(context).contacts;
    } else if (selectedIndex == 2) {
      return S.of(context).discover;
    } else {
      return S.of(context).me;
    }
  }
}
