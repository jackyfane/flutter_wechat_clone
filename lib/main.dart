import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wechatclone/commons/routes/route_app.dart';
import 'package:wechatclone/commons/routes/routes.dart';
import 'package:wechatclone/home.dart';

import 'package:wechatclone/generated/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wechatclone/provider/locale_change_provider.dart';
import 'package:wechatclone/provider/bottom_nav_provider.dart';

void main() {
  final providers = [
    ChangeNotifierProvider(create: (context) => BottomNavProvider()),
    ChangeNotifierProvider(create: (context) => LocaleChangeProvider()),
  ];
  return runApp(MultiProvider(
    providers: providers,
    child: WeChat(),
  ));
}

class WeChat extends StatelessWidget {
  final router = Router();

  @override
  Widget build(BuildContext context) {
    Routes.configureRoutes(router);
    RouteApp.router = router;

    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(
        fallback: const Locale('en', ''),
      ),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(234, 234, 234, 1),
        textSelectionColor: Colors.green,
      ),
      onGenerateTitle: (context) => S.of(context).appName,
      home: Builder(
        builder: (context) {
          return Localizations.override(
            context: context,
            locale: Provider.of<LocaleChangeProvider>(context).locale,
            child: HomePage(),
          );
        },
      ),
      onGenerateRoute: RouteApp.router.generator,
    );
  }
}
