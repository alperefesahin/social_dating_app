// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  bool get onlineStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String imageUrl,
      String status,
      String userName,
      String about,
      bool onlineStatus});
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  final UserProfileModel _value;
  // ignore: unused_field
  final $Res Function(UserProfileModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? status = freezed,
    Object? userName = freezed,
    Object? about = freezed,
    Object? onlineStatus = freezed,
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
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      onlineStatus: onlineStatus == freezed
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$_UserProfileModelCopyWith(
          _$_UserProfileModel value, $Res Function(_$_UserProfileModel) then) =
      __$$_UserProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String status,
      String userName,
      String about,
      bool onlineStatus});
}

/// @nodoc
class __$$_UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res>
    implements _$$_UserProfileModelCopyWith<$Res> {
  __$$_UserProfileModelCopyWithImpl(
      _$_UserProfileModel _value, $Res Function(_$_UserProfileModel) _then)
      : super(_value, (v) => _then(v as _$_UserProfileModel));

  @override
  _$_UserProfileModel get _value => super._value as _$_UserProfileModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? status = freezed,
    Object? userName = freezed,
    Object? about = freezed,
    Object? onlineStatus = freezed,
  }) {
    return _then(_$_UserProfileModel(
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
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      onlineStatus: onlineStatus == freezed
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserProfileModel implements _UserProfileModel {
  const _$_UserProfileModel(
      {required this.imageUrl,
      required this.status,
      required this.userName,
      required this.about,
      required this.onlineStatus});

  @override
  final String imageUrl;
  @override
  final String status;
  @override
  final String userName;
  @override
  final String about;
  @override
  final bool onlineStatus;

  @override
  String toString() {
    return 'UserProfileModel(imageUrl: $imageUrl, status: $status, userName: $userName, about: $about, onlineStatus: $onlineStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality()
                .equals(other.onlineStatus, onlineStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(onlineStatus));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      __$$_UserProfileModelCopyWithImpl<_$_UserProfileModel>(this, _$identity);
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {required final String imageUrl,
      required final String status,
      required final String userName,
      required final String about,
      required final bool onlineStatus}) = _$_UserProfileModel;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get about => throw _privateConstructorUsedError;
  @override
  bool get onlineStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
