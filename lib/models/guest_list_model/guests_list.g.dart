// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guests_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestList _$$_GuestListFromJson(Map<String, dynamic> json) => _$_GuestList(
      json['numberOfGuests'] as int,
      (json['guests'] as List<dynamic>)
          .map((e) => Guest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GuestListToJson(_$_GuestList instance) =>
    <String, dynamic>{
      'numberOfGuests': instance.numberOfGuests,
      'guests': instance.guests,
    };
