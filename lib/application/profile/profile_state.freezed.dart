// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  UserProfileModel get currentUserProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({UserProfileModel currentUserProfile});

  $UserProfileModelCopyWith<$Res> get currentUserProfile;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? currentUserProfile = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserProfile: currentUserProfile == freezed
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }

  @override
  $UserProfileModelCopyWith<$Res> get currentUserProfile {
    return $UserProfileModelCopyWith<$Res>(_value.currentUserProfile, (value) {
      return _then(_value.copyWith(currentUserProfile: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({UserProfileModel currentUserProfile});

  @override
  $UserProfileModelCopyWith<$Res> get currentUserProfile;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? currentUserProfile = freezed,
  }) {
    return _then(_$_ProfileState(
      currentUserProfile: currentUserProfile == freezed
          ? _value.currentUserProfile
          : currentUserProfile // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  _$_ProfileState({required this.currentUserProfile}) : super._();

  @override
  final UserProfileModel currentUserProfile;

  @override
  String toString() {
    return 'ProfileState(currentUserProfile: $currentUserProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality()
                .equals(other.currentUserProfile, currentUserProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentUserProfile));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  factory _ProfileState({required final UserProfileModel currentUserProfile}) =
      _$_ProfileState;
  _ProfileState._() : super._();

  @override
  UserProfileModel get currentUserProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
