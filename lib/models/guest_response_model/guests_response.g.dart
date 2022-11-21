// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guests_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestsResponse _$$_GuestsResponseFromJson(Map<String, dynamic> json) =>
    _$_GuestsResponse(
      json['numberOfGuests'] as int,
      (json['invitesSrc'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_GuestsResponseToJson(_$_GuestsResponse instance) =>
    <String, dynamic>{
      'numberOfGuests': instance.numberOfGuests,
      'invitesSrc': instance.invitesSrc,
    };
