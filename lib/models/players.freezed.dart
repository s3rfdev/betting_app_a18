// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'players.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Player {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get shirtNumber => throw _privateConstructorUsedError;
  String get Age => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {int id,
      String name,
      String position,
      String height,
      String shirtNumber,
      String Age,
      int price,
      String country,
      String teamName});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? height = null,
    Object? shirtNumber = null,
    Object? Age = null,
    Object? price = null,
    Object? country = null,
    Object? teamName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      shirtNumber: null == shirtNumber
          ? _value.shirtNumber
          : shirtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      Age: null == Age
          ? _value.Age
          : Age // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$_PlayerCopyWith(_$_Player value, $Res Function(_$_Player) then) =
      __$$_PlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String position,
      String height,
      String shirtNumber,
      String Age,
      int price,
      String country,
      String teamName});
}

/// @nodoc
class __$$_PlayerCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$_Player>
    implements _$$_PlayerCopyWith<$Res> {
  __$$_PlayerCopyWithImpl(_$_Player _value, $Res Function(_$_Player) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? height = null,
    Object? shirtNumber = null,
    Object? Age = null,
    Object? price = null,
    Object? country = null,
    Object? teamName = null,
  }) {
    return _then(_$_Player(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      shirtNumber: null == shirtNumber
          ? _value.shirtNumber
          : shirtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      Age: null == Age
          ? _value.Age
          : Age // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Player implements _Player {
  const _$_Player(
      {required this.id,
      required this.name,
      required this.position,
      required this.height,
      required this.shirtNumber,
      required this.Age,
      required this.price,
      required this.country,
      required this.teamName});

  @override
  final int id;
  @override
  final String name;
  @override
  final String position;
  @override
  final String height;
  @override
  final String shirtNumber;
  @override
  final String Age;
  @override
  final int price;
  @override
  final String country;
  @override
  final String teamName;

  @override
  String toString() {
    return 'Player(id: $id, name: $name, position: $position, height: $height, shirtNumber: $shirtNumber, Age: $Age, price: $price, country: $country, teamName: $teamName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Player &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.shirtNumber, shirtNumber) ||
                other.shirtNumber == shirtNumber) &&
            (identical(other.Age, Age) || other.Age == Age) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, position, height,
      shirtNumber, Age, price, country, teamName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      __$$_PlayerCopyWithImpl<_$_Player>(this, _$identity);
}

abstract class _Player implements Player {
  const factory _Player(
      {required final int id,
      required final String name,
      required final String position,
      required final String height,
      required final String shirtNumber,
      required final String Age,
      required final int price,
      required final String country,
      required final String teamName}) = _$_Player;

  @override
  int get id;
  @override
  String get name;
  @override
  String get position;
  @override
  String get height;
  @override
  String get shirtNumber;
  @override
  String get Age;
  @override
  int get price;
  @override
  String get country;
  @override
  String get teamName;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      throw _privateConstructorUsedError;
}
