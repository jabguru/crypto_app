/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Cards.svg
  SvgGenImage get cards => const SvgGenImage('assets/images/Cards.svg');

  /// File path: assets/images/Ethereum icon.svg
  SvgGenImage get ethereumIcon =>
      const SvgGenImage('assets/images/Ethereum icon.svg');

  /// File path: assets/images/Minus icon.svg
  SvgGenImage get minusIcon =>
      const SvgGenImage('assets/images/Minus icon.svg');

  /// File path: assets/images/Plus icon.svg
  SvgGenImage get plusIcon => const SvgGenImage('assets/images/Plus icon.svg');

  /// File path: assets/images/Tab account.svg
  SvgGenImage get tabAccount =>
      const SvgGenImage('assets/images/Tab account.svg');

  /// File path: assets/images/Tab home.svg
  SvgGenImage get tabHome => const SvgGenImage('assets/images/Tab home.svg');

  /// File path: assets/images/Tab portfolio.svg
  SvgGenImage get tabPortfolio =>
      const SvgGenImage('assets/images/Tab portfolio.svg');

  /// File path: assets/images/Tab trade.svg
  SvgGenImage get tabTrade => const SvgGenImage('assets/images/Tab trade.svg');

  /// File path: assets/images/Up icon.svg
  SvgGenImage get upIcon => const SvgGenImage('assets/images/Up icon.svg');

  /// File path: assets/images/hamburger.svg
  SvgGenImage get hamburger => const SvgGenImage('assets/images/hamburger.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        cards,
        ethereumIcon,
        minusIcon,
        plusIcon,
        tabAccount,
        tabHome,
        tabPortfolio,
        tabTrade,
        upIcon,
        hamburger
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
