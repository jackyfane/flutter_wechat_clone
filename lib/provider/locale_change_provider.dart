import 'package:flutter/cupertino.dart';

class LocaleChangeProvider with ChangeNotifier {
  Locale _locale = Locale('en', '');

  void change(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  Locale get locale => _locale;
}
