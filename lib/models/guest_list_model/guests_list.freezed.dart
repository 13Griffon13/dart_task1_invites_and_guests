// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guests_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestsList _$GuestsListFromJson(Map<String, dynamic> json) {
  return _GuestList.fromJson(json);
}

/// @nodoc
mixin _$GuestsList {
  int get numberOfGuests => throw _privateConstructorUsedError;
  List<Guest> get guests => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfGuests, List<Guest> guests) freezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numberOfGuests, List<Guest> guests)? freezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfGuests, List<Guest> guests)? freezed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestList value) freezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestList value)? freezed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestList value)? freezed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestsListCopyWith<GuestsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestsListCopyWith<$Res> {
  factory $GuestsListCopyWith(
          GuestsList value, $Res Function(GuestsList) then) =
      _$GuestsListCopyWithImpl<$Res, GuestsList>;
  @useResult
  $Res call({int numberOfGuests, List<Guest> guests});
}

/// @nodoc
class _$GuestsListCopyWithImpl<$Res, $Val extends GuestsList>
    implements $GuestsListCopyWith<$Res> {
  _$GuestsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGuests = null,
    Object? guests = null,
  }) {
    return _then(_value.copyWith(
      numberOfGuests: null == numberOfGuests
          ? _value.numberOfGuests
          : numberOfGuests // ignore: cast_nullable_to_non_nullable
              as int,
      guests: null == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestListCopyWith<$Res>
    implements $GuestsListCopyWith<$Res> {
  factory _$$_GuestListCopyWith(
          _$_GuestList value, $Res Function(_$_GuestList) then) =
      __$$_GuestListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numberOfGuests, List<Guest> guests});
}

/// @nodoc
class __$$_GuestListCopyWithImpl<$Res>
    extends _$GuestsListCopyWithImpl<$Res, _$_GuestList>
    implements _$$_GuestListCopyWith<$Res> {
  __$$_GuestListCopyWithImpl(
      _$_GuestList _value, $Res Function(_$_GuestList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfGuests = null,
    Object? guests = null,
  }) {
    return _then(_$_GuestList(
      null == numberOfGuests
          ? _value.numberOfGuests
          : numberOfGuests // ignore: cast_nullable_to_non_nullable
              as int,
      null == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<Guest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestList implements _GuestList {
  _$_GuestList(this.numberOfGuests, final List<Guest> guests)
      : _guests = guests;

  factory _$_GuestList.fromJson(Map<String, dynamic> json) =>
      _$$_GuestListFromJson(json);

  @override
  final int numberOfGuests;
  final List<Guest> _guests;
  @override
  List<Guest> get guests {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guests);
  }

  @override
  String toString() {
    return 'GuestsList.freezed(numberOfGuests: $numberOfGuests, guests: $guests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestList &&
            (identical(other.numberOfGuests, numberOfGuests) ||
                other.numberOfGuests == numberOfGuests) &&
            const DeepCollectionEquality().equals(other._guests, _guests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfGuests,
      const DeepCollectionEquality().hash(_guests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestListCopyWith<_$_GuestList> get copyWith =>
      __$$_GuestListCopyWithImpl<_$_GuestList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfGuests, List<Guest> guests) freezed,
  }) {
    return freezed(numberOfGuests, guests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numberOfGuests, List<Guest> guests)? freezed,
  }) {
    return freezed?.call(numberOfGuests, guests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfGuests, List<Guest> guests)? freezed,
    required TResult orElse(),
  }) {
    if (freezed != null) {
      return freezed(numberOfGuests, guests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuestList value) freezed,
  }) {
    return freezed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GuestList value)? freezed,
  }) {
    return freezed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuestList value)? freezed,
    required TResult orElse(),
  }) {
    if (freezed != null) {
      return freezed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestListToJson(
      this,
    );
  }
}

abstract class _GuestList implements GuestsList {
  factory _GuestList(final int numberOfGuests, final List<Guest> guests) =
      _$_GuestList;

  factory _GuestList.fromJson(Map<String, dynamic> json) =
      _$_GuestList.fromJson;

  @override
  int get numberOfGuests;
  @override
  List<Guest> get guests;
  @override
  @JsonKey(ignore: true)
  _$$_GuestListCopyWith<_$_GuestList> get copyWith =>
      throw _privateConstructorUsedError;
}
