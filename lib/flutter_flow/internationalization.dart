import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ja', 'en'];

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
    String? jaText = '',
    String? enText = '',
  }) =>
      [jaText, enText][languageIndex] ?? '';

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
  // loginPage
  {
    'l45jvmoj': {
      'ja': '「毎日」に新しい「価値」',
      'en': '',
    },
    'isuqkebs': {
      'ja': 'ようこそ！',
      'en': '',
    },
    '28hmeziw': {
      'ja': 'メールアドレス',
      'en': '',
    },
    'ldczere7': {
      'ja': 'メールアドレス...',
      'en': '',
    },
    '3xtyu61t': {
      'ja': 'パスワード',
      'en': '',
    },
    'kxlembfs': {
      'ja': 'パスワード...',
      'en': '',
    },
    '5a7onnqn': {
      'ja': 'パスワードを忘れた方',
      'en': '',
    },
    '5khxzhpc': {
      'ja': 'ログイン',
      'en': '',
    },
    'jrwui1gm': {
      'ja': 'アカウントをお持ちでない場合は、',
      'en': '',
    },
    'sq7d9r7u': {
      'ja': '今すぐ作成',
      'en': '',
    },
    '5z95ox4b': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerAccount
  {
    '8k5s8w6c': {
      'ja': '「毎日」に新しい「価値」',
      'en': '',
    },
    'ggz07dhq': {
      'ja': 'ようこそ！',
      'en': '',
    },
    'fxr60gk7': {
      'ja': 'メールアドレス',
      'en': '',
    },
    'q12ldr96': {
      'ja': 'メールアドレス',
      'en': '',
    },
    'gru83l3l': {
      'ja': 'パスワード',
      'en': '',
    },
    'kidj2wro': {
      'ja': 'パスワード',
      'en': '',
    },
    'rvmzbcp4': {
      'ja': 'パスワード確認',
      'en': '',
    },
    'dcb52ewq': {
      'ja': 'パスワード',
      'en': '',
    },
    '9riyqjds': {
      'ja': '新規登録',
      'en': '',
    },
    'mcxqjkbd': {
      'ja': 'すでにアカウントをお持ちですか?',
      'en': '',
    },
    'hjacbsqg': {
      'ja': 'ログイン',
      'en': '',
    },
    'gwxp5glf': {
      'ja': 'Home',
      'en': '',
    },
  },
  // forgotPassword
  {
    'zksvh04r': {
      'ja': 'パスワードを忘れた方',
      'en': '',
    },
    'y1it4bhf': {
      'ja': '確認コードをメールで送信します。\nメールアドレスを入力ください。',
      'en': '',
    },
    'j2dzvt13': {
      'ja': 'メールアドレス',
      'en': '',
    },
    'ng9cs14u': {
      'ja': 'メールアドレス',
      'en': '',
    },
    't962glzw': {
      'ja': '送信する',
      'en': '',
    },
    'zjbjossh': {
      'ja': 'Home',
      'en': '',
    },
  },
  // orderDevice
  {
    'vrs15rvu': {
      'ja': 'GO-KOKU デバイス',
      'en': '',
    },
    'vrnibzz5': {
      'ja': '自転車に',
      'en': '',
    },
    '31bqx9ap': {
      'ja': '簡単設置で',
      'en': '',
    },
    '1nh7pqo7': {
      'ja': 'お金',
      'en': '',
    },
    'nsy8lral': {
      'ja': 'が',
      'en': '',
    },
    'odph89nx': {
      'ja': 'ぞくぞく',
      'en': '',
    },
    'zntr7pqj': {
      'ja': '貯まる',
      'en': '',
    },
    'hmn9wyz0': {
      'ja': '簡単設置でお金が続々貯まる',
      'en': '',
    },
    'yirej4qx': {
      'ja': 'Keep Track of Spending',
      'en': '',
    },
    'cpjp4hwq': {
      'ja':
          'Easily add transactions and associate them with budgets that have been created.',
      'en': '',
    },
    'ecxmgik0': {
      'ja': 'Budget Analysis',
      'en': '',
    },
    'w98bkr7t': {
      'ja': 'Know where your budgets are and how they can be adjusted.',
      'en': '',
    },
    'yo4xlhzw': {
      'ja': '今すぐデバイスを手に入れる',
      'en': '',
    },
    'rqel1w5y': {
      'ja': 'デバイス配送依頼',
      'en': '',
    },
    '0k9cq3fl': {
      'ja': 'Home',
      'en': '',
    },
  },
  // MY_profilePage
  {
    'y5ktrdtz': {
      'ja': 'マイアカウント',
      'en': '',
    },
    'kzzm7vdm': {
      'ja': '個人情報変更',
      'en': '',
    },
    'gr4xkpyb': {
      'ja': 'パスワード変更',
      'en': '',
    },
    'ej7sru2g': {
      'ja': 'GO-KOKU デバイスの使い方',
      'en': '',
    },
    'nw0oveyt': {
      'ja': 'ログアウト',
      'en': '',
    },
    '69437e71': {
      'ja': 'Light Mode',
      'en': '',
    },
    '3utr9126': {
      'ja': 'Page Title',
      'en': '',
    },
    'ou0wmt7j': {
      'ja': 'マイページ',
      'en': '',
    },
  },
  // registerAccountComplete
  {
    '17hdbr5x': {
      'ja': 'アカウント作成完了',
      'en': '',
    },
    'fi70ixrv': {
      'ja': '次へ',
      'en': '',
    },
    '2g8uwcvv': {
      'ja': 'Home',
      'en': '',
    },
  },
  // privacyPolicy
  {
    'nmi3rpfu': {
      'ja':
          'このセクションでは、当社の個人情報利用目的について記載しています。但し、本通知は全世界共通の通知であり、本通知に記載した特定の行為がある国の法律で制限又は禁止されている場合、当該国では本通知に記載した目的でお客様情報を利用することはありません。\n上記を前提として、当社は、以下の目的でお客様情報を利用します。お客様の年齢や当社製品のユーザとしての状況の確認など、規制要件に適合するため。\nご注文の履行や支払処理を含め、当社製品をお客様に貸与又は販売するため。\nお問い合わせやご要望への対応並びに保証及びサポート・サービスの提供など、お客様に販売関連サービス及び製品サポート・サービスを提供するため。\n当社製品のマーケティングのため(法律で許容される場合)。これには、ロイヤルティ・プログラム及び照会プログラムの管理、製品改良、マーケット・リサーチ(マーケット・リサーチにおける公正な慣行を証明する目的)、マーケティング戦略の策定、マーケティング・キャンペーンの管理、及び例えばPMI製品の販売店やイベントにおけるお客様の顧客体験、並びに当社がお客様に送信するメッセージ又は当社が表示する広告の内容のカスタマイズが含まれます。\nお客様が当社のマーケティングに関心があり、継続して当社からのマーケティングを受けることを希望されているかを理解するため。\n当社又は当社の取引先からPMI製品のマーケティングやプロモーションへの参加機会をお客様にご案内するため。\nお客様にPMIタッチポイント及びPMI電子デバイスを利用可能にし、顧客体験を向上させるため。\n上記の全てに対応するために、お客様のアカウントを管理し、お客様にご連絡し、当社又は当社の製品やサービスのサポート提供者とのアポイントメントを管理し(新製品やアフターサービスに関する場合など)、お客様のPMIタッチポイントの体験をカスタマイズし、不正を防止し(例えば、プロモーションやコンペ、調査の場面において、同じ方による複数回に及ぶ参加を防ぐため、又はEコマースにおいてカード保有者の情報を保護するため)、人員のトレーニング及び品質管理、管理及び問題解決を行うため。\n',
      'en': '',
    },
    'fhgf344m': {
      'ja': '同意する',
      'en': '',
    },
    '1mpnwbvy': {
      'ja': 'プライバシーポリシー',
      'en': '',
    },
    '56hjdxrv': {
      'ja': 'Home',
      'en': '',
    },
  },
  // homePage
  {
    'xgmbtowt': {
      'ja': 'ようこそ！',
      'en': '',
    },
    'sgfjo8vr': {
      'ja': '¥3,000',
      'en': '',
    },
    'i5p9ueem': {
      'ja': '70%',
      'en': '',
    },
    'tssy8466': {
      'ja': '¥5,000まであとわずか!',
      'en': '',
    },
    '3o2hvd4s': {
      'ja': 'クイックサービス',
      'en': '',
    },
    'cwhhznow': {
      'ja': 'デバイス配送',
      'en': '',
    },
    'mhprtt58': {
      'ja': '友達紹介',
      'en': '',
    },
    'qzabh0o6': {
      'ja': 'マイページ',
      'en': '',
    },
    '2ehakw31': {
      'ja': 'サポート',
      'en': '',
    },
    'd8rg0b5c': {
      'ja': 'コールセンター',
      'en': '',
    },
    '1tvjk7dq': {
      'ja': '利用規約',
      'en': '',
    },
    'xbj391u7': {
      'ja': 'Home',
      'en': '',
    },
  },
  // auth_3_phone
  {
    'pir2o3ir': {
      'ja': 'GO-KOKU',
      'en': '',
    },
    'z51mdwcc': {
      'ja': '携帯番号',
      'en': '',
    },
    'opnss722': {
      'ja': '下記に電話番号を入力してください',
      'en': '',
    },
    '1bij4ykc': {
      'ja': 'Input code below in order to proceed',
      'en': '',
    },
    'ns5726be': {
      'ja': '０８０－１２３４－５６７８...',
      'en': '',
    },
    'foj3j1mm': {
      'ja': '次へ',
      'en': '',
    },
    '53jle5k7': {
      'ja': 'Home',
      'en': '',
    },
  },
  // auth_3_verifyPhone
  {
    '1uqsql2y': {
      'ja': 'GO-KOKU',
      'en': '',
    },
    'z8xasx9a': {
      'ja': '電話番号確認コード',
      'en': '',
    },
    'yxb5l1s5': {
      'ja': 'へお送りした６桁コードを入力してください。',
      'en': '',
    },
    'meylgfu0': {
      'ja': 'Verify Code',
      'en': '',
    },
    'bhlgqvs9': {
      'ja': 'Home',
      'en': '',
    },
  },
  // auth_3_verifyemailAddress
  {
    'n6twpi8j': {
      'ja': 'GO-KOKU',
      'en': '',
    },
    'sk0zqu7u': {
      'ja': '新規アカウント設定用のメールアドレスの確認コード',
      'en': '',
    },
    'i2etw8jt': {
      'ja': 'へお送りした６桁コードを入力してください。',
      'en': '',
    },
    '2qovqb74': {
      'ja': '次へ',
      'en': '',
    },
    'oscfm83s': {
      'ja': 'メールアドレス確認',
      'en': '',
    },
    '63u6q3xi': {
      'ja': 'Home',
      'en': '',
    },
  },
  // TermsandConditions
  {
    '7fbvc8o9': {
      'ja':
          'このセクションでは、当社の個人情報利用目的について記載しています。但し、本通知は全世界共通の通知であり、本通知に記載した特定の行為がある国の法律で制限又は禁止されている場合、当該国では本通知に記載した目的でお客様情報を利用することはありません。\n上記を前提として、当社は、以下の目的でお客様情報を利用します。お客様の年齢や当社製品のユーザとしての状況の確認など、規制要件に適合するため。\nご注文の履行や支払処理を含め、当社製品をお客様に貸与又は販売するため。\nお問い合わせやご要望への対応並びに保証及びサポート・サービスの提供など、お客様に販売関連サービス及び製品サポート・サービスを提供するため。\n当社製品のマーケティングのため(法律で許容される場合)。これには、ロイヤルティ・プログラム及び照会プログラムの管理、製品改良、マーケット・リサーチ(マーケット・リサーチにおける公正な慣行を証明する目的)、マーケティング戦略の策定、マーケティング・キャンペーンの管理、及び例えばPMI製品の販売店やイベントにおけるお客様の顧客体験、並びに当社がお客様に送信するメッセージ又は当社が表示する広告の内容のカスタマイズが含まれます。\nお客様が当社のマーケティングに関心があり、継続して当社からのマーケティングを受けることを希望されているかを理解するため。\n当社又は当社の取引先からPMI製品のマーケティングやプロモーションへの参加機会をお客様にご案内するため。\nお客様にPMIタッチポイント及びPMI電子デバイスを利用可能にし、顧客体験を向上させるため。\n上記の全てに対応するために、お客様のアカウントを管理し、お客様にご連絡し、当社又は当社の製品やサービスのサポート提供者とのアポイントメントを管理し(新製品やアフターサービスに関する場合など)、お客様のPMIタッチポイントの体験をカスタマイズし、不正を防止し(例えば、プロモーションやコンペ、調査の場面において、同じ方による複数回に及ぶ参加を防ぐため、又はEコマースにおいてカード保有者の情報を保護するため)、人員のトレーニング及び品質管理、管理及び問題解決を行うため。\n',
      'en': '',
    },
    '4oed1i7y': {
      'ja': '同意する',
      'en': '',
    },
    '7n7wepbs': {
      'ja': '利用規約',
      'en': '',
    },
    '8n8vwpdw': {
      'ja': 'Home',
      'en': '',
    },
  },
  // homeAddress
  {
    'm463qm5g': {
      'ja': '郵便番号',
      'en': '',
    },
    '3ttt6eox': {
      'ja': '例) 111-1111',
      'en': '',
    },
    'y0olico2': {
      'ja': '都道府県',
      'en': '',
    },
    '9tc77i1b': {
      'ja': '例) 080-1234-5678',
      'en': '',
    },
    'lqdcd6oa': {
      'ja': '市区町村',
      'en': '',
    },
    'qchvaiex': {
      'ja': '例) 港区',
      'en': '',
    },
    'o50610b5': {
      'ja': '番地',
      'en': '',
    },
    '1jqoodnp': {
      'ja': '例) 南麻布２－１３－１８',
      'en': '',
    },
    '1541cjjc': {
      'ja': '建物名・部屋番号',
      'en': '',
    },
    '0nfb0bb8': {
      'ja': '例) ８０１',
      'en': '',
    },
    '95lsvq8q': {
      'ja': '次へ',
      'en': '',
    },
    'yoes94hh': {
      'ja': 'Please enter the patients full name.',
      'en': '',
    },
    '61sin5dw': {
      'ja': 'Please choose an option from the dropdown',
      'en': '',
    },
    '1zj6o1uy': {
      'ja': 'Please enter an age for the patient.',
      'en': '',
    },
    'pqt36mvw': {
      'ja': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mfuqk5nz': {
      'ja': 'Please choose an option from the dropdown',
      'en': '',
    },
    'e4v5o2iu': {
      'ja': 'Please enter the date of birth of the patient.',
      'en': '',
    },
    'sdxm51er': {
      'ja': 'Please choose an option from the dropdown',
      'en': '',
    },
    'glv09rhm': {
      'ja': 'Field is required',
      'en': '',
    },
    'hut8to8a': {
      'ja': 'Please choose an option from the dropdown',
      'en': '',
    },
    'vii525ca': {
      'ja': '下記に住所を登録してください',
      'en': '',
    },
    'ylq43chp': {
      'ja': 'Home',
      'en': '',
    },
  },
  // splash
  {
    'tedz08lt': {
      'ja': 'GO-KOKUへようこそ!',
      'en': '',
    },
    'ne2kk80d': {
      'ja': '簡単にお金を続々貯めよう！',
      'en': '',
    },
    'yzerh2kb': {
      'ja': 'Get Started',
      'en': '',
    },
    'rngzjxrh': {
      'ja': 'My Account',
      'en': '',
    },
    'ay13kcbd': {
      'ja': 'Home',
      'en': '',
    },
  },
  // orderDeviceComplete
  {
    'q9s60jvg': {
      'ja': '配送依頼受け取りました',
      'en': '',
    },
    '5sjiwtfw': {
      'ja':
          '・お客様からのお申し込みの受理日か7～14日間程度で、商品をご指定のお届け先にお届けいたします。\n\n・配送先の地域・天候・交通事情などによっては到着が数日掛かることもございます。',
      'en': '',
    },
    '1k6321eq': {
      'ja': '次へ',
      'en': '',
    },
    '9fyoenq6': {
      'ja': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'ja': '',
      'en': '',
    },
    'kx9cdks4': {
      'ja': '',
      'en': '',
    },
    'efvtwj7k': {
      'ja': '',
      'en': '',
    },
    'ec5hfa1e': {
      'ja': '',
      'en': '',
    },
    'q5ljwvfo': {
      'ja': '',
      'en': '',
    },
    'j4rmwb3h': {
      'ja': '',
      'en': '',
    },
    '6ah1b18f': {
      'ja': '',
      'en': '',
    },
    '2kos1hen': {
      'ja': '',
      'en': '',
    },
    'gdypuop9': {
      'ja': '',
      'en': '',
    },
    'ivmygvoa': {
      'ja': '',
      'en': '',
    },
    'rlnyq2ak': {
      'ja': '',
      'en': '',
    },
    'h1kq4hg9': {
      'ja': '',
      'en': '',
    },
    'igg98lgn': {
      'ja': '',
      'en': '',
    },
    'aox3s4fb': {
      'ja': '',
      'en': '',
    },
    'l8hv5a7z': {
      'ja': '',
      'en': '',
    },
    '4pjwb70a': {
      'ja': '',
      'en': '',
    },
    '0xlokf4y': {
      'ja': '',
      'en': '',
    },
    '8twlwiwt': {
      'ja': '',
      'en': '',
    },
    'rlqq81uo': {
      'ja': '',
      'en': '',
    },
    '8w4i1w3u': {
      'ja': '',
      'en': '',
    },
    'ygae8yfe': {
      'ja': '',
      'en': '',
    },
    'd2tb8a3d': {
      'ja': '',
      'en': '',
    },
    'xm4yp6p4': {
      'ja': '',
      'en': '',
    },
    '3j4il23j': {
      'ja': '',
      'en': '',
    },
    't4xzlq9q': {
      'ja': '',
      'en': '',
    },
    '513nj4m0': {
      'ja': '',
      'en': '',
    },
    'a1jxfgju': {
      'ja': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
