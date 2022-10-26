// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDownloadsImages value) getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;
}

/// @nodoc
abstract class _$$_getDownloadsImagesCopyWith<$Res> {
  factory _$$_getDownloadsImagesCopyWith(_$_getDownloadsImages value,
          $Res Function(_$_getDownloadsImages) then) =
      __$$_getDownloadsImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getDownloadsImagesCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$$_getDownloadsImagesCopyWith<$Res> {
  __$$_getDownloadsImagesCopyWithImpl(
      _$_getDownloadsImages _value, $Res Function(_$_getDownloadsImages) _then)
      : super(_value, (v) => _then(v as _$_getDownloadsImages));

  @override
  _$_getDownloadsImages get _value => super._value as _$_getDownloadsImages;
}

/// @nodoc

class _$_getDownloadsImages implements _getDownloadsImages {
  const _$_getDownloadsImages();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getDownloadsImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) {
    return getDownloadsImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
  }) {
    return getDownloadsImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDownloadsImages value) getDownloadsImages,
  }) {
    return getDownloadsImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
  }) {
    return getDownloadsImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages(this);
    }
    return orElse();
  }
}

abstract class _getDownloadsImages implements DownloadsEvent {
  const factory _getDownloadsImages() = _$_getDownloadsImages;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  Option<Either<Mainfailures, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<Mainfailures, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  final DownloadsState _value;
  // ignore: unused_field
  final $Res Function(DownloadsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadsStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_DownloadsStateCopyWith(
          _$_DownloadsState value, $Res Function(_$_DownloadsState) then) =
      __$$_DownloadsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<Mainfailures, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class __$$_DownloadsStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res>
    implements _$$_DownloadsStateCopyWith<$Res> {
  __$$_DownloadsStateCopyWithImpl(
      _$_DownloadsState _value, $Res Function(_$_DownloadsState) _then)
      : super(_value, (v) => _then(v as _$_DownloadsState));

  @override
  _$_DownloadsState get _value => super._value as _$_DownloadsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_DownloadsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadsState implements _DownloadsState {
  const _$_DownloadsState(
      {required this.isLoading,
      required final List<Downloads>? downloads,
      required this.downloadsFailureOrSuccessOption})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Downloads>? _downloads;
  @override
  List<Downloads>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<Mainfailures, List<Downloads>>>
      downloadsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            const DeepCollectionEquality().equals(
                other.downloadsFailureOrSuccessOption,
                downloadsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_downloads),
      const DeepCollectionEquality().hash(downloadsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      __$$_DownloadsStateCopyWithImpl<_$_DownloadsState>(this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isLoading,
      required final List<Downloads>? downloads,
      required final Option<Either<Mainfailures, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _$_DownloadsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  @override
  Option<Either<Mainfailures, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}
