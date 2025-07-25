// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bgimageCard.png
  AssetGenImage get bgimageCard =>
      const AssetGenImage('assets/images/bgimageCard.png');

  /// File path: assets/images/help.png
  AssetGenImage get help => const AssetGenImage('assets/images/help.png');

  /// File path: assets/images/manicon.png
  AssetGenImage get manicon => const AssetGenImage('assets/images/manicon.png');

  /// File path: assets/images/profilecover.png
  AssetGenImage get profilecover =>
      const AssetGenImage('assets/images/profilecover.png');

  /// File path: assets/images/profilepic.png
  AssetGenImage get profilepic =>
      const AssetGenImage('assets/images/profilepic.png');

  /// File path: assets/images/taskdes.png
  AssetGenImage get taskdes => const AssetGenImage('assets/images/taskdes.png');

  /// File path: assets/images/taskicon.png
  AssetGenImage get taskicon =>
      const AssetGenImage('assets/images/taskicon.png');

  /// File path: assets/images/tasktitle.png
  AssetGenImage get tasktitle =>
      const AssetGenImage('assets/images/tasktitle.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bgimageCard,
    help,
    manicon,
    profilecover,
    profilepic,
    taskdes,
    taskicon,
    tasktitle,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
