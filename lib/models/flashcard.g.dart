// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardImpl _$$FlashcardImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardImpl(
      id: json['id'] as String,
      front: json['front'] as String,
      back: json['back'] as String,
      language: json['language'] as String,
      isLearned: json['isLearned'] as bool? ?? false,
      example: json['example'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$FlashcardImplToJson(_$FlashcardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'front': instance.front,
      'back': instance.back,
      'language': instance.language,
      'isLearned': instance.isLearned,
      if (instance.example case final value?) 'example': value,
      if (instance.imageUrl case final value?) 'imageUrl': value,
    };
