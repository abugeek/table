import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ru', 'uz'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ruText = '',
    String? uzText = '',
  }) =>
      [enText, ruText, uzText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Events
  {
    'cvd3u5zr': {
      'en': 'Edit',
      'ru': '',
      'uz': '',
    },
    'z2j8esk3': {
      'en': 'Event',
      'ru': '',
      'uz': '',
    },
  },
  // AddToCalendarPage
  {
    'djbzieec': {
      'en': 'Choose date',
      'ru': '',
      'uz': '',
    },
    'lwkbkv48': {
      'en': 'Start time',
      'ru': '',
      'uz': '',
    },
    'k431kgmj': {
      'en': 'End time',
      'ru': '',
      'uz': '',
    },
    'zukrk3ng': {
      'en': 'Home',
      'ru': '',
      'uz': '',
    },
  },
  // login
  {
    'dez3pdsr': {
      'en': 'Write your name',
      'ru': '',
      'uz': '',
    },
    'no45zorz': {
      'en': 'Your name',
      'ru': '',
      'uz': '',
    },
    'c5dsug3o': {
      'en': 'Next',
      'ru': '',
      'uz': '',
    },
    'o7fql0rt': {
      'en': 'Home',
      'ru': '',
      'uz': '',
    },
  },
  // MainInfo
  {
    '1qblx0hp': {
      'en': 'Hi, ',
      'ru': '',
      'uz': '',
    },
    'm8yqrf5y': {
      'en': 'Your next lesson is',
      'ru': '',
      'uz': '',
    },
    '2nkrqjkk': {
      'en': 'Computer Networks as 10:30',
      'ru': '',
      'uz': '',
    },
  },
  // no_data_widget
  {
    'rr2asw9n': {
      'en': 'No Data',
      'ru': '',
      'uz': '',
    },
  },
  // lesson_add_widget
  {
    '63hckj1a': {
      'en': 'Lesson',
      'ru': '',
      'uz': '',
    },
    'dhaletcn': {
      'en': 'Label here...',
      'ru': '',
      'uz': '',
    },
    '2jujqf7p': {
      'en': 'Lesson Type',
      'ru': '',
      'uz': '',
    },
    'vwe9u6mp': {
      'en': 'Label here...',
      'ru': '',
      'uz': '',
    },
    '6sg0qaip': {
      'en': 'Lesson Room',
      'ru': '',
      'uz': '',
    },
    'xbl3ntni': {
      'en': 'Label here...',
      'ru': '',
      'uz': '',
    },
    'micf2897': {
      'en': 'Lesson Teacher',
      'ru': '',
      'uz': '',
    },
    '5kv51i92': {
      'en': 'Label here...',
      'ru': '',
      'uz': '',
    },
  },
  // Miscellaneous
  {
    'wyp66tev': {
      'en': 'Button',
      'ru': 'Кнопка',
      'uz': 'Tugma',
    },
    'ie2989d4': {
      'en': 'Permission to access to camera',
      'ru': '',
      'uz': '',
    },
    'u78h87bb': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'ymkonw1b': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'gi5usu9b': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    '72jbjdfe': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'mjkn3d24': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'j6444hxi': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'bu0h6rir': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'glb3ph96': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'xc1t6qci': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'ai7a5tal': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'tm5a1xww': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'rym9fnxm': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'mfu44l4z': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'vbk60667': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'keimm5ie': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'm30djx9j': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'hd4nazct': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    '4g9yci33': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'ek307c51': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'j0x5is4t': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'kje1krjt': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    '4m9gkd7n': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'jd895hom': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    'dnnmxyku': {
      'en': '',
      'ru': '',
      'uz': '',
    },
    '2ixxci8a': {
      'en': '',
      'ru': '',
      'uz': '',
    },
  },
].reduce((a, b) => a..addAll(b));
