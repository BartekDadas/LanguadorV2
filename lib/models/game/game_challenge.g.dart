// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameChallengeImpl _$$GameChallengeImplFromJson(Map<String, dynamic> json) =>
    _$GameChallengeImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String,
      type: $enumDecode(_$ChallengeTypeEnumMap, json['type']),
      points: (json['points'] as num?)?.toInt() ?? 0,
      imageUrl: json['imageUrl'] as String?,
      audioUrl: json['audioUrl'] as String?,
    );

Map<String, dynamic> _$$GameChallengeImplToJson(_$GameChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
      'type': _$ChallengeTypeEnumMap[instance.type]!,
      'points': instance.points,
      if (instance.imageUrl case final value?) 'imageUrl': value,
      if (instance.audioUrl case final value?) 'audioUrl': value,
    };

const _$ChallengeTypeEnumMap = {
  ChallengeType.multipleChoice: 'multipleChoice',
  ChallengeType.wordMatching: 'wordMatching',
  ChallengeType.translation: 'translation',
  ChallengeType.listening: 'listening',
  ChallengeType.speaking: 'speaking',
};
