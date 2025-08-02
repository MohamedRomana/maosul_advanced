// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/Lang/ar.json
  String get ar => 'assets/Lang/ar.json';

  /// File path: assets/Lang/en.json
  String get en => 'assets/Lang/en.json';

  /// List of all assets
  List<String> get values => [ar, en];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Cairo-Regular.ttf
  String get cairoRegular => 'assets/fonts/Cairo-Regular.ttf';

  /// List of all assets
  List<String> get values => [cairoRegular];
}

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/Mask Group 14.png
  AssetGenImage get maskGroup14 =>
      const AssetGenImage('assets/img/Mask Group 14.png');

  /// File path: assets/img/Mask Group 2198.png
  AssetGenImage get maskGroup2198 =>
      const AssetGenImage('assets/img/Mask Group 2198.png');

  /// File path: assets/img/alert.json
  String get alert => 'assets/img/alert.json';

  /// File path: assets/img/burger.jpg
  AssetGenImage get burger => const AssetGenImage('assets/img/burger.jpg');

  /// File path: assets/img/empty_noti.json
  String get emptyNoti => 'assets/img/empty_noti.json';

  /// File path: assets/img/emptyorder.json
  String get emptyorder => 'assets/img/emptyorder.json';

  /// File path: assets/img/flour.png
  AssetGenImage get flour => const AssetGenImage('assets/img/flour.png');

  /// File path: assets/img/food.jpg
  AssetGenImage get food => const AssetGenImage('assets/img/food.jpg');

  /// File path: assets/img/images.jpeg
  AssetGenImage get images => const AssetGenImage('assets/img/images.jpeg');

  /// File path: assets/img/loading.json
  String get loading => 'assets/img/loading.json';

  /// File path: assets/img/login.json
  String get login => 'assets/img/login.json';

  /// File path: assets/img/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/img/logo.png');

  /// File path: assets/img/market.jpg
  AssetGenImage get market => const AssetGenImage('assets/img/market.jpg');

  /// File path: assets/img/market2.jpg
  AssetGenImage get market2 => const AssetGenImage('assets/img/market2.jpg');

  /// File path: assets/img/on_boarding1.png
  AssetGenImage get onBoarding1 =>
      const AssetGenImage('assets/img/on_boarding1.png');

  /// File path: assets/img/on_boarding2.png
  AssetGenImage get onBoarding2 =>
      const AssetGenImage('assets/img/on_boarding2.png');

  /// File path: assets/img/on_boarding3.png
  AssetGenImage get onBoarding3 =>
      const AssetGenImage('assets/img/on_boarding3.png');

  /// List of all assets
  List<dynamic> get values => [
    maskGroup14,
    maskGroup2198,
    alert,
    burger,
    emptyNoti,
    emptyorder,
    flour,
    food,
    images,
    loading,
    login,
    logo,
    market,
    market2,
    onBoarding1,
    onBoarding2,
    onBoarding3,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/back_arrow.svg
  String get backArrow => 'assets/svg/back_arrow.svg';

  /// File path: assets/svg/dashboard.svg
  String get dashboard => 'assets/svg/dashboard.svg';

  /// File path: assets/svg/delivery-box.svg
  String get deliveryBox => 'assets/svg/delivery-box.svg';

  /// File path: assets/svg/document.svg
  String get document => 'assets/svg/document.svg';

  /// File path: assets/svg/dollar.svg
  String get dollar => 'assets/svg/dollar.svg';

  /// File path: assets/svg/drawer.svg
  String get drawer => 'assets/svg/drawer.svg';

  /// File path: assets/svg/euro.svg
  String get euro => 'assets/svg/euro.svg';

  /// File path: assets/svg/history.svg
  String get history => 'assets/svg/history.svg';

  /// File path: assets/svg/home.svg
  String get home => 'assets/svg/home.svg';

  /// File path: assets/svg/info.svg
  String get info => 'assets/svg/info.svg';

  /// File path: assets/svg/lang.svg
  String get lang => 'assets/svg/lang.svg';

  /// File path: assets/svg/location.svg
  String get location => 'assets/svg/location.svg';

  /// File path: assets/svg/market.svg
  String get market => 'assets/svg/market.svg';

  /// File path: assets/svg/message.svg
  String get message => 'assets/svg/message.svg';

  /// File path: assets/svg/notifications.svg
  String get notifications => 'assets/svg/notifications.svg';

  /// File path: assets/svg/profile.svg
  String get profile => 'assets/svg/profile.svg';

  /// File path: assets/svg/restart.svg
  String get restart => 'assets/svg/restart.svg';

  /// File path: assets/svg/shopping-cart.svg
  String get shoppingCart => 'assets/svg/shopping-cart.svg';

  /// File path: assets/svg/sms.svg
  String get sms => 'assets/svg/sms.svg';

  /// File path: assets/svg/timer.svg
  String get timer => 'assets/svg/timer.svg';

  /// File path: assets/svg/user.svg
  String get user => 'assets/svg/user.svg';

  /// List of all assets
  List<String> get values => [
    backArrow,
    dashboard,
    deliveryBox,
    document,
    dollar,
    drawer,
    euro,
    history,
    home,
    info,
    lang,
    location,
    market,
    message,
    notifications,
    profile,
    restart,
    shoppingCart,
    sms,
    timer,
    user,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsLangGen lang = $AssetsLangGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImgGen img = $AssetsImgGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
