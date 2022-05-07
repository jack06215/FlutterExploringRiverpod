// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MySwitchTearOff {
  const _$MySwitchTearOff();

  _MySwitch call({required int id, bool value = false}) {
    return _MySwitch(
      id: id,
      value: value,
    );
  }
}

/// @nodoc
const $MySwitch = _$MySwitchTearOff();

/// @nodoc
mixin _$MySwitch {
  int get id => throw _privateConstructorUsedError;
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MySwitchCopyWith<MySwitch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySwitchCopyWith<$Res> {
  factory $MySwitchCopyWith(MySwitch value, $Res Function(MySwitch) then) =
      _$MySwitchCopyWithImpl<$Res>;
  $Res call({int id, bool value});
}

/// @nodoc
class _$MySwitchCopyWithImpl<$Res> implements $MySwitchCopyWith<$Res> {
  _$MySwitchCopyWithImpl(this._value, this._then);

  final MySwitch _value;
  // ignore: unused_field
  final $Res Function(MySwitch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MySwitchCopyWith<$Res> implements $MySwitchCopyWith<$Res> {
  factory _$MySwitchCopyWith(_MySwitch value, $Res Function(_MySwitch) then) =
      __$MySwitchCopyWithImpl<$Res>;
  @override
  $Res call({int id, bool value});
}

/// @nodoc
class __$MySwitchCopyWithImpl<$Res> extends _$MySwitchCopyWithImpl<$Res>
    implements _$MySwitchCopyWith<$Res> {
  __$MySwitchCopyWithImpl(_MySwitch _value, $Res Function(_MySwitch) _then)
      : super(_value, (v) => _then(v as _MySwitch));

  @override
  _MySwitch get _value => super._value as _MySwitch;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_MySwitch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MySwitch implements _MySwitch {
  _$_MySwitch({required this.id, this.value = false});

  @override
  final int id;
  @JsonKey(defaultValue: false)
  @override
  final bool value;

  @override
  String toString() {
    return 'MySwitch(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MySwitch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$MySwitchCopyWith<_MySwitch> get copyWith =>
      __$MySwitchCopyWithImpl<_MySwitch>(this, _$identity);
}

abstract class _MySwitch implements MySwitch {
  factory _MySwitch({required int id, bool value}) = _$_MySwitch;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  bool get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MySwitchCopyWith<_MySwitch> get copyWith =>
      throw _privateConstructorUsedError;
}
