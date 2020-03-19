import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
    GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get appName => "WeChat Clone";
  String get chats => "WeChat";
  String get contacts => "Contacts";
  String get contacts_group_chats => "Group Chats";
  String get contacts_new_friends => "New Friends";
  String get contacts_official_accounts => "Official Accounts";
  String get contacts_tags => "Tags";
  String get discover => "Discover";
  String get discover_moments => "Moments";
  String get discover_mp => "Mini Programs";
  String get discover_nearby => "People Nearby";
  String get discover_scan => "Scan";
  String get discover_search => "Search";
  String get discover_shake => "Shake";
  String get me => "Me";
  String get me_favorite => "Favorites";
  String get me_pay => "WeChat Pay";
  String get me_posts => "My Posts";
  String get me_settings => "Settings";
  String get me_sticker => "Sticker Gallery";
}

class $en extends S {
  const $en();
}

class $zh_CN extends S {
  const $zh_CN();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get contacts_official_accounts => "公众号";
  @override
  String get discover_scan => "扫一扫";
  @override
  String get discover => "发现";
  @override
  String get discover_mp => "小程序";
  @override
  String get contacts_group_chats => "群聊";
  @override
  String get me_favorite => "收藏";
  @override
  String get contacts_tags => "标签";
  @override
  String get appName => "仿微信";
  @override
  String get discover_moments => "朋友圈";
  @override
  String get me_settings => "设置";
  @override
  String get discover_shake => "摇一摇";
  @override
  String get discover_search => "搜索";
  @override
  String get discover_nearby => "附近的人";
  @override
  String get contacts_new_friends => "新的朋友";
  @override
  String get chats => "微信";
  @override
  String get me => "我";
  @override
  String get me_posts => "相册";
  @override
  String get me_pay => "微信支付";
  @override
  String get contacts => "通讯录";
  @override
  String get me_sticker => "表情";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("zh", "CN"),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        case "zh_CN":
          S.current = const $zh_CN();
          return SynchronousFuture<S>(S.current);
        default:
          // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported, bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry && (supportedLocale.countryCode == null || supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
  ? null
  : l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();