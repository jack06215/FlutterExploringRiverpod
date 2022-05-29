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
      return _FromKonachan.fromJson(json);
    case 'fromYandere':
      return _FromYandere.fromJson(json);
    case 'fromGelbooru':
      return _FromGelbooru.fromJson(json);

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
    required TResult Function(_FromKonachan value) fromKonachan,
    required TResult Function(_FromYandere value) fromYandere,
    required TResult Function(_FromGelbooru value) fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
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
abstract class _$$_FromKonachanCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$_FromKonachanCopyWith(
          _$_FromKonachan value, $Res Function(_$_FromKonachan) then) =
      __$$_FromKonachanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      String file,
      String sample,
      String previewImg,
      String source});
}

/// @nodoc
class __$$_FromKonachanCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$_FromKonachanCopyWith<$Res> {
  __$$_FromKonachanCopyWithImpl(
      _$_FromKonachan _value, $Res Function(_$_FromKonachan) _then)
      : super(_value, (v) => _then(v as _$_FromKonachan));

  @override
  _$_FromKonachan get _value => super._value as _$_FromKonachan;

  @override
  $Res call({
    Object? author = freezed,
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_FromKonachan(
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
class _$_FromKonachan implements _FromKonachan {
  _$_FromKonachan(
      {required this.author,
      required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromKonachan';

  factory _$_FromKonachan.fromJson(Map<String, dynamic> json) =>
      _$$_FromKonachanFromJson(json);

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
            other is _$_FromKonachan &&
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
  _$$_FromKonachanCopyWith<_$_FromKonachan> get copyWith =>
      __$$_FromKonachanCopyWithImpl<_$_FromKonachan>(this, _$identity);

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
    required TResult Function(_FromKonachan value) fromKonachan,
    required TResult Function(_FromYandere value) fromYandere,
    required TResult Function(_FromGelbooru value) fromGelbooru,
  }) {
    return fromKonachan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
  }) {
    return fromKonachan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromKonachan != null) {
      return fromKonachan(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromKonachanToJson(this);
  }
}

abstract class _FromKonachan implements Waifu {
  factory _FromKonachan(
      {required final String author,
      required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$_FromKonachan;

  factory _FromKonachan.fromJson(Map<String, dynamic> json) =
      _$_FromKonachan.fromJson;

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
  _$$_FromKonachanCopyWith<_$_FromKonachan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FromYandereCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$_FromYandereCopyWith(
          _$_FromYandere value, $Res Function(_$_FromYandere) then) =
      __$$_FromYandereCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      String file,
      String sample,
      String previewImg,
      String source});
}

/// @nodoc
class __$$_FromYandereCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$_FromYandereCopyWith<$Res> {
  __$$_FromYandereCopyWithImpl(
      _$_FromYandere _value, $Res Function(_$_FromYandere) _then)
      : super(_value, (v) => _then(v as _$_FromYandere));

  @override
  _$_FromYandere get _value => super._value as _$_FromYandere;

  @override
  $Res call({
    Object? author = freezed,
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_FromYandere(
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
class _$_FromYandere implements _FromYandere {
  _$_FromYandere(
      {required this.author,
      required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromYandere';

  factory _$_FromYandere.fromJson(Map<String, dynamic> json) =>
      _$$_FromYandereFromJson(json);

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
            other is _$_FromYandere &&
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
  _$$_FromYandereCopyWith<_$_FromYandere> get copyWith =>
      __$$_FromYandereCopyWithImpl<_$_FromYandere>(this, _$identity);

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
    required TResult Function(_FromKonachan value) fromKonachan,
    required TResult Function(_FromYandere value) fromYandere,
    required TResult Function(_FromGelbooru value) fromGelbooru,
  }) {
    return fromYandere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
  }) {
    return fromYandere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromYandere != null) {
      return fromYandere(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromYandereToJson(this);
  }
}

abstract class _FromYandere implements Waifu {
  factory _FromYandere(
      {required final String author,
      required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$_FromYandere;

  factory _FromYandere.fromJson(Map<String, dynamic> json) =
      _$_FromYandere.fromJson;

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
  _$$_FromYandereCopyWith<_$_FromYandere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FromGelbooruCopyWith<$Res> implements $WaifuCopyWith<$Res> {
  factory _$$_FromGelbooruCopyWith(
          _$_FromGelbooru value, $Res Function(_$_FromGelbooru) then) =
      __$$_FromGelbooruCopyWithImpl<$Res>;
  @override
  $Res call({String file, String sample, String previewImg, String source});
}

/// @nodoc
class __$$_FromGelbooruCopyWithImpl<$Res> extends _$WaifuCopyWithImpl<$Res>
    implements _$$_FromGelbooruCopyWith<$Res> {
  __$$_FromGelbooruCopyWithImpl(
      _$_FromGelbooru _value, $Res Function(_$_FromGelbooru) _then)
      : super(_value, (v) => _then(v as _$_FromGelbooru));

  @override
  _$_FromGelbooru get _value => super._value as _$_FromGelbooru;

  @override
  $Res call({
    Object? file = freezed,
    Object? sample = freezed,
    Object? previewImg = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_FromGelbooru(
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
class _$_FromGelbooru implements _FromGelbooru {
  _$_FromGelbooru(
      {required this.file,
      required this.sample,
      required this.previewImg,
      required this.source,
      final String? $type})
      : $type = $type ?? 'fromGelbooru';

  factory _$_FromGelbooru.fromJson(Map<String, dynamic> json) =>
      _$$_FromGelbooruFromJson(json);

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
            other is _$_FromGelbooru &&
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
  _$$_FromGelbooruCopyWith<_$_FromGelbooru> get copyWith =>
      __$$_FromGelbooruCopyWithImpl<_$_FromGelbooru>(this, _$identity);

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
    required TResult Function(_FromKonachan value) fromKonachan,
    required TResult Function(_FromYandere value) fromYandere,
    required TResult Function(_FromGelbooru value) fromGelbooru,
  }) {
    return fromGelbooru(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
  }) {
    return fromGelbooru?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromKonachan value)? fromKonachan,
    TResult Function(_FromYandere value)? fromYandere,
    TResult Function(_FromGelbooru value)? fromGelbooru,
    required TResult orElse(),
  }) {
    if (fromGelbooru != null) {
      return fromGelbooru(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromGelbooruToJson(this);
  }
}

abstract class _FromGelbooru implements Waifu {
  factory _FromGelbooru(
      {required final String file,
      required final String sample,
      required final String previewImg,
      required final String source}) = _$_FromGelbooru;

  factory _FromGelbooru.fromJson(Map<String, dynamic> json) =
      _$_FromGelbooru.fromJson;

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
  _$$_FromGelbooruCopyWith<_$_FromGelbooru> get copyWith =>
      throw _privateConstructorUsedError;
}
