// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guests_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestsResponse _$GuestsResponseFromJson(Map<String, dynamic> json) {
  return _GuestsResponse.fromJson(json);
}

/// @nodoc
mixin _$GuestsResponse {
  int get numberOfGuests => throw _privateConstructorUsedError;
  List<String> get invitesSrc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestsResponseCopyWith<GuestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestsResponseCopyWith<$Res> {
  factory $GuestsResponseCopyWith(
          GuestsResponse value, $Res Function(GuestsResponse) then) =
      _$GuestsResponseCopyWithImpl<$Res, GuestsResponse>;
  @useResult
  $Res call({int numberOfGuests, List<String> invitesSrc});
}

/// @nodoc
class _$GuestsResponseCopyWithImpl<$Res, $Val extends GuestsResponse>
    implements $GuestsResponseCopyWith<$Res> {
  _$GuestsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGuests = null,
    Object? invitesSrc = null,
  }) {
    return _then(_value.copyWith(
      numberOfGuests: null == numberOfGuests
          ? _value.numberOfGuests
          : numberOfGuests // ignore: cast_nullable_to_non_nullable
              as int,
      invitesSrc: null == invitesSrc
          ? _value.invitesSrc
          : invitesSrc // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestsResponseCopyWith<$Res>
    implements $GuestsResponseCopyWith<$Res> {
  factory _$$_GuestsResponseCopyWith(
          _$_GuestsResponse value, $Res Function(_$_GuestsResponse) then) =
      __$$_GuestsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numberOfGuests, List<String> invitesSrc});
}

/// @nodoc
class __$$_GuestsResponseCopyWithImpl<$Res>
    extends _$GuestsResponseCopyWithImpl<$Res, _$_GuestsResponse>
    implements _$$_GuestsResponseCopyWith<$Res> {
  __$$_GuestsResponseCopyWithImpl(
      _$_GuestsResponse _value, $Res Function(_$_GuestsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGuests = null,
    Object? invitesSrc = null,
  }) {
    return _then(_$_GuestsResponse(
      null == numberOfGuests
          ? _value.numberOfGuests
          : numberOfGuests // ignore: cast_nullable_to_non_nullable
              as int,
      null == invitesSrc
          ? _value._invitesSrc
          : invitesSrc // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestsResponse implements _GuestsResponse {
  _$_GuestsResponse(this.numberOfGuests,
      [final List<String> invitesSrc = const <String>[]])
      : _invitesSrc = invitesSrc;

  factory _$_GuestsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GuestsResponseFromJson(json);

  @override
  final int numberOfGuests;
  final List<String> _invitesSrc;
  @override
  @JsonKey()
  List<String> get invitesSrc {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invitesSrc);
  }

  @override
  String toString() {
    return 'GuestsResponse(numberOfGuests: $numberOfGuests, invitesSrc: $invitesSrc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestsResponse &&
            (identical(other.numberOfGuests, numberOfGuests) ||
                other.numberOfGuests == numberOfGuests) &&
            const DeepCollectionEquality()
                .equals(other._invitesSrc, _invitesSrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfGuests,
      const DeepCollectionEquality().hash(_invitesSrc));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestsResponseCopyWith<_$_GuestsResponse> get copyWith =>
      __$$_GuestsResponseCopyWithImpl<_$_GuestsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestsResponseToJson(
      this,
    );
  }
}

abstract class _GuestsResponse implements GuestsResponse {
  factory _GuestsResponse(final int numberOfGuests,
      [final List<String> invitesSrc]) = _$_GuestsResponse;

  factory _GuestsResponse.fromJson(Map<String, dynamic> json) =
      _$_GuestsResponse.fromJson;

  @override
  int get numberOfGuests;
  @override
  List<String> get invitesSrc;
  @override
  @JsonKey(ignore: true)
  _$$_GuestsResponseCopyWith<_$_GuestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
