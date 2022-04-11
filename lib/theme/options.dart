import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'themes.dart';

//所有的样式配置可选项，目前只有theme和platform
class ImoocOptions{
  final ImoocTheme theme;
  final TargetPlatform platform;

  ImoocOptions._({
    required this.theme,
    required this.platform,
  });

  ImoocOptions copyWith({required ImoocTheme theme, required TargetPlatform platform,}){
    return ImoocOptions._(
      theme: theme ?? this.theme,
      platform: platform ?? this.platform,
    );
  }

  @override
  bool operator ==(dynamic other){
    if(runtimeType != other.runtimeType)
      return false;
    final ImoocOptions typedOther = other;
    return theme == typedOther.theme && platform == typedOther.platform;
  }

  @override
  int get hashCode => hashValues(
    theme,
    platform,
  );

  @override
  String toString(){
    return '$runtimeType($theme)';
  }
}

final ImoocOptions initOptions = ImoocOptions._(
    theme: kLightGalleryTheme,
    platform: defaultTargetPlatform, //获取当前手机系统，android安卓手机还是ios苹果
);
