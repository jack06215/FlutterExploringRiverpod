// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'waifu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Waifu _$WaifuFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fromKonachan':
      return FromKonachan.fromJson(json);
    case 'fromYandere':
      return FromYandere.fromJson(json);
    case 'fromGelbooru':
      return FromGelbooru.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Waifu',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Waifu {
  String get file => throw _privateConstructorUsedError;
  String get sample => throw _privateConstructorUsedError;
  String get previewImg => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromKonachan,
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromYandere,
    required TResult Function(
            String file, String sample, String previewImg, String source)
        fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FromKonachan value) fromKonachan,
    required TResult Function(FromYandere value) fromYandere,
    required TResult Function(FromGelbooru value) fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaifuCopyWith<Waifu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaifuCopyWith<$Res> {
  factory $WaifuCopyWith(Waifu value, $Res Function(Waifu) then) =
      _$WaifuCopyWithImpl<$Res>;
  $Res call({String file, String sample, String previewImg, String source});
}

/// @nodoc
class _$WaifuCopyWithImpl<$Res> implements $WaifuCopyWith<$Res> {
  _$WaifuCopyWithImpl(this._value, this._then);

  final Waifu _value;
  // ignore: unused_field
  final $Res Function(Waifu) _then;

  @override
  $Res call({
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
      previewImg: previewImg == freezed
          ? _value.previewImg
          : previewImg // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$FromKonachanCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$FromKonachanCopyWith(
          _$FromKonachan value, $Res Function(_$FromKonachan) then) =
      __$$FromKonachanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      String file,
      String sample,
      String previewImg,
      String source});
}

/// @nodoc
class __$$FromKonachanCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$FromKonachanCopyWith<$Res> {
  __$$FromKonachanCopyWithImpl(
      _$FromKonachan _value, $Res Function(_$FromKonachan) _then)
      : super(_value, (v) => _then(v as _$FromKonachan));

  @override
  _$FromKonachan get _value => super._value as _$FromKonachan;

  @override
  $Res call({
    Object? author = freezed,
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$FromKonachan(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
      previewImg: previewImg == freezed
          ? _value.previewImg
          : previewImg // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromKonachan implements FromKonachan {
  _$FromKonachan(
      {required this.author,
      required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromKonachan';

  factory _$FromKonachan.fromJson(Map<String, dynamic> json) =>
      _$$FromKonachanFromJson(json);

  @override
  final String author;
  @override
  final String file;
  @override
  final String sample;
  @override
  final String previewImg;
  @override
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Waifu.fromKonachan(author: $author, file: $file, sample: $sample, previewImg: $previewImg, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromKonachan &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.sample, sample) &&
            const DeepCollectionEquality()
                .equals(other.previewImg, previewImg) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(sample),
      const DeepCollectionEquality().hash(previewImg),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$FromKonachanCopyWith<_$FromKonachan> get copyWith =>
      __$$FromKonachanCopyWithImpl<_$FromKonachan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromKonachan,
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromYandere,
    required TResult Function(
            String file, String sample, String previewImg, String source)
        fromGelbooru,
  }) {
    return fromKonachan(author, file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
  }) {
    return fromKonachan?.call(author, file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromKonachan != null) {
      return fromKonachan(author, file, sample, previewImg, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FromKonachan value) fromKonachan,
    required TResult Function(FromYandere value) fromYandere,
    required TResult Function(FromGelbooru value) fromGelbooru,
  }) {
    return fromKonachan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
  }) {
    return fromKonachan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromKonachan != null) {
      return fromKonachan(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FromKonachanToJson(this);
  }
}

abstract class FromKonachan implements Waifu {
  factory FromKonachan(
      {required final String author,
      required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$FromKonachan;

  factory FromKonachan.fromJson(Map<String, dynamic> json) =
      _$FromKonachan.fromJson;

  String get author => throw _privateConstructorUsedError;
  @override
  String get file => throw _privateConstructorUsedError;
  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  String get previewImg => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FromKonachanCopyWith<_$FromKonachan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromYandereCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$FromYandereCopyWith(
          _$FromYandere value, $Res Function(_$FromYandere) then) =
      __$$FromYandereCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      String file,
      String sample,
      String previewImg,
      String source});
}

/// @nodoc
class __$$FromYandereCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$FromYandereCopyWith<$Res> {
  __$$FromYandereCopyWithImpl(
      _$FromYandere _value, $Res Function(_$FromYandere) _then)
      : super(_value, (v) => _then(v as _$FromYandere));

  @override
  _$FromYandere get _value => super._value as _$FromYandere;

  @override
  $Res call({
    Object? author = freezed,
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$FromYandere(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
      previewImg: previewImg == freezed
          ? _value.previewImg
          : previewImg // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromYandere implements FromYandere {
  _$FromYandere(
      {required this.author,
      required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromYandere';

  factory _$FromYandere.fromJson(Map<String, dynamic> json) =>
      _$$FromYandereFromJson(json);

  @override
  final String author;
  @override
  final String file;
  @override
  final String sample;
  @override
  final String previewImg;
  @override
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Waifu.fromYandere(author: $author, file: $file, sample: $sample, previewImg: $previewImg, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromYandere &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.sample, sample) &&
            const DeepCollectionEquality()
                .equals(other.previewImg, previewImg) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(sample),
      const DeepCollectionEquality().hash(previewImg),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$FromYandereCopyWith<_$FromYandere> get copyWith =>
      __$$FromYandereCopyWithImpl<_$FromYandere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromKonachan,
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromYandere,
    required TResult Function(
            String file, String sample, String previewImg, String source)
        fromGelbooru,
  }) {
    return fromYandere(author, file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
  }) {
    return fromYandere?.call(author, file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromYandere != null) {
      return fromYandere(author, file, sample, previewImg, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FromKonachan value) fromKonachan,
    required TResult Function(FromYandere value) fromYandere,
    required TResult Function(FromGelbooru value) fromGelbooru,
  }) {
    return fromYandere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
  }) {
    return fromYandere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromYandere != null) {
      return fromYandere(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FromYandereToJson(this);
  }
}

abstract class FromYandere implements Waifu {
  factory FromYandere(
      {required final String author,
      required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$FromYandere;

  factory FromYandere.fromJson(Map<String, dynamic> json) =
      _$FromYandere.fromJson;

  String get author => throw _privateConstructorUsedError;
  @override
  String get file => throw _privateConstructorUsedError;
  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  String get previewImg => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FromYandereCopyWith<_$FromYandere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromGelbooruCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$FromGelbooruCopyWith(
          _$FromGelbooru value, $Res Function(_$FromGelbooru) then) =
      __$$FromGelbooruCopyWithImpl<$Res>;
  @override
  $Res call({String file, String sample, String previewImg, String source});
}

/// @nodoc
class __$$FromGelbooruCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$FromGelbooruCopyWith<$Res> {
  __$$FromGelbooruCopyWithImpl(
      _$FromGelbooru _value, $Res Function(_$FromGelbooru) _then)
      : super(_value, (v) => _then(v as _$FromGelbooru));

  @override
  _$FromGelbooru get _value => super._value as _$FromGelbooru;

  @override
  $Res call({
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$FromGelbooru(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
      previewImg: previewImg == freezed
          ? _value.previewImg
          : previewImg // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromGelbooru implements FromGelbooru {
  _$FromGelbooru(
      {required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromGelbooru';

  factory _$FromGelbooru.fromJson(Map<String, dynamic> json) =>
      _$$FromGelbooruFromJson(json);

  @override
  final String file;
  @override
  final String sample;
  @override
  final String previewImg;
  @override
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Waifu.fromGelbooru(file: $file, sample: $sample, previewImg: $previewImg, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromGelbooru &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.sample, sample) &&
            const DeepCollectionEquality()
                .equals(other.previewImg, previewImg) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(sample),
      const DeepCollectionEquality().hash(previewImg),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$FromGelbooruCopyWith<_$FromGelbooru> get copyWith =>
      __$$FromGelbooruCopyWithImpl<_$FromGelbooru>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromKonachan,
    required TResult Function(String author, String file, String sample,
            String previewImg, String source)
        fromYandere,
    required TResult Function(
            String file, String sample, String previewImg, String source)
        fromGelbooru,
  }) {
    return fromGelbooru(file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
  }) {
    return fromGelbooru?.call(file, sample, previewImg, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromKonachan,
    TResult Function(String author, String file, String sample,
            String previewImg, String source)?
        fromYandere,
    TResult Function(
            String file, String sample, String previewImg, String source)?
        fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromGelbooru != null) {
      return fromGelbooru(file, sample, previewImg, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FromKonachan value) fromKonachan,
    required TResult Function(FromYandere value) fromYandere,
    required TResult Function(FromGelbooru value) fromGelbooru,
  }) {
    return fromGelbooru(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
  }) {
    return fromGelbooru?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FromKonachan value)? fromKonachan,
    TResult Function(FromYandere value)? fromYandere,
    TResult Function(FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromGelbooru != null) {
      return fromGelbooru(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FromGelbooruToJson(this);
  }
}

abstract class FromGelbooru implements Waifu {
  factory FromGelbooru(
      {required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$FromGelbooru;

  factory FromGelbooru.fromJson(Map<String, dynamic> json) =
      _$FromGelbooru.fromJson;

  @override
  String get file => throw _privateConstructorUsedError;
  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  String get previewImg => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$FromGelbooruCopyWith<_$FromGelbooru> get copyWith =>
      throw _privateConstructorUsedError;
}
