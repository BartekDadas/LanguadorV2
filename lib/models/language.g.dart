// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      nativeName: json['nativeName'] as String,
      flagEmoji: json['flagEmoji'] as String?,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'nativeName': instance.nativeName,
      if (instance.flagEmoji case final value?) 'flagEmoji': value,
    };
