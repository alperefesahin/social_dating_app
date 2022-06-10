// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  AuthUserModel get user => throw _privateConstructorUsedError;
  bool get isUserSignedIn => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({AuthUserModel user, bool isUserSignedIn, bool isInProgress});

  $AuthUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isUserSignedIn = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserSignedIn: isUserSignedIn == freezed
          ? _value.isUserSignedIn
          : isUserSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AuthUserModelCopyWith<$Res> get user {
    return $AuthUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthUserModel user, bool isUserSignedIn, bool isInProgress});

  @override
  $AuthUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, (v) => _then(v as _$_AuthState));

  @override
  _$_AuthState get _value => super._value as _$_AuthState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isUserSignedIn = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_$_AuthState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserSignedIn: isUserSignedIn == freezed
          ? _value.isUserSignedIn
          : isUserSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  _$_AuthState(
      {required this.user,
      required this.isUserSignedIn,
      required this.isInProgress})
      : super._();

  @override
  final AuthUserModel user;
  @override
  final bool isUserSignedIn;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'AuthState(user: $user, isUserSignedIn: $isUserSignedIn, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isUserSignedIn, isUserSignedIn) &&
            const DeepCollectionEquality()
                .equals(other.isInProgress, isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isUserSignedIn),
      const DeepCollectionEquality().hash(isInProgress));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  factory _AuthState(
      {required final AuthUserModel user,
      required final bool isUserSignedIn,
      required final bool isInProgress}) = _$_AuthState;
  _AuthState._() : super._();

  @override
  AuthUserModel get user => throw _privateConstructorUsedError;
  @override
  bool get isUserSignedIn => throw _privateConstructorUsedError;
  @override
  bool get isInProgress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
