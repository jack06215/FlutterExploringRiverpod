// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return _Meme.fromJson(json);
}

/// @nodoc
mixin _$Meme {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res>;
  $Res call({int id, String imageUrl, String caption, String category});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res> implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  final Meme _value;
  // ignore: unused_field
  final $Res Function(Meme) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? caption = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MemeCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$_MemeCopyWith(_$_Meme value, $Res Function(_$_Meme) then) =
      __$$_MemeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String imageUrl, String caption, String category});
}

/// @nodoc
class __$$_MemeCopyWithImpl<$Res> extends _$MemeCopyWithImpl<$Res>
    implements _$$_MemeCopyWith<$Res> {
  __$$_MemeCopyWithImpl(_$_Meme _value, $Res Function(_$_Meme) _then)
      : super(_value, (v) => _then(v as _$_Meme));

  @override
  _$_Meme get _value => super._value as _$_Meme;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? caption = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Meme(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meme implements _Meme {
  const _$_Meme(
      {required this.id,
      required this.imageUrl,
      required this.caption,
      required this.category});

  factory _$_Meme.fromJson(Map<String, dynamic> json) => _$$_MemeFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String caption;
  @override
  final String category;

  @override
  String toString() {
    return 'Meme(id: $id, imageUrl: $imageUrl, caption: $caption, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meme &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(caption),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_MemeCopyWith<_$_Meme> get copyWith =>
      __$$_MemeCopyWithImpl<_$_Meme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeToJson(this);
  }
}

abstract class _Meme implements Meme {
  const factory _Meme(
      {required final int id,
      required final String imageUrl,
      required final String caption,
      required final String category}) = _$_Meme;

  factory _Meme.fromJson(Map<String, dynamic> json) = _$_Meme.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get caption => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MemeCopyWith<_$_Meme> get copyWith => throw _privateConstructorUsedError;
}
