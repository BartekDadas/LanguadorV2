// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateImpl _$$GameStateImplFromJson(Map<String, dynamic> json) =>
    _$GameStateImpl(
      score: (json['score'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 0,
      xp: (json['xp'] as num?)?.toInt() ?? 0,
      isMultiplayer: json['isMultiplayer'] as bool? ?? false,
      status: $enumDecodeNullable(_$GameStatusEnumMap, json['status']) ??
          GameStatus.initial,
      currentOptions: (json['currentOptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$GameStateImplToJson(_$GameStateImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'level': instance.level,
      'xp': instance.xp,
      'isMultiplayer': instance.isMultiplayer,
      'status': _$GameStatusEnumMap[instance.status]!,
      'currentOptions': instance.currentOptions,
      if (instance.error case final value?) 'error': value,
    };

const _$GameStatusEnumMap = {
  GameStatus.initial: 'initial',
  GameStatus.loading: 'loading',
  GameStatus.playing: 'playing',
  GameStatus.loadingOptions: 'loadingOptions',
  GameStatus.paused: 'paused',
  GameStatus.completed: 'completed',
  GameStatus.error: 'error',
};
