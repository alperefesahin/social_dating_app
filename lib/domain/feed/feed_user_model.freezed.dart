// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedUserModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedUserModelCopyWith<FeedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedUserModelCopyWith<$Res> {
  factory $FeedUserModelCopyWith(
          FeedUserModel value, $Res Function(FeedUserModel) then) =
      _$FeedUserModelCopyWithImpl<$Res>;
  $Res call({String imageUrl, String status, String userName});
}

/// @nodoc
class _$FeedUserModelCopyWithImpl<$Res>
    implements $FeedUserModelCopyWith<$Res> {
  _$FeedUserModelCopyWithImpl(this._value, this._then);

  final FeedUserModel _value;
  // ignore: unused_field
  final $Res Function(FeedUserModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? status = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FeedUserModelCopyWith<$Res>
    implements $FeedUserModelCopyWith<$Res> {
  factory _$$_FeedUserModelCopyWith(
          _$_FeedUserModel value, $Res Function(_$_FeedUserModel) then) =
      __$$_FeedUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String status, String userName});
}

/// @nodoc
class __$$_FeedUserModelCopyWithImpl<$Res>
    extends _$FeedUserModelCopyWithImpl<$Res>
    implements _$$_FeedUserModelCopyWith<$Res> {
  __$$_FeedUserModelCopyWithImpl(
      _$_FeedUserModel _value, $Res Function(_$_FeedUserModel) _then)
      : super(_value, (v) => _then(v as _$_FeedUserModel));

  @override
  _$_FeedUserModel get _value => super._value as _$_FeedUserModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? status = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_FeedUserModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FeedUserModel implements _FeedUserModel {
  const _$_FeedUserModel(
      {required this.imageUrl, required this.status, required this.userName});

  @override
  final String imageUrl;
  @override
  final String status;
  @override
  final String userName;

  @override
  String toString() {
    return 'FeedUserModel(imageUrl: $imageUrl, status: $status, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedUserModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_FeedUserModelCopyWith<_$_FeedUserModel> get copyWith =>
      __$$_FeedUserModelCopyWithImpl<_$_FeedUserModel>(this, _$identity);
}

abstract class _FeedUserModel implements FeedUserModel {
  const factory _FeedUserModel(
      {required final String imageUrl,
      required final String status,
      required final String userName}) = _$_FeedUserModel;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeedUserModelCopyWith<_$_FeedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
