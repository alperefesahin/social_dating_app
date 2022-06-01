// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'maps_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapsState {
  LocationPermission? get permission => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  UserLocationModel get userLocation => throw _privateConstructorUsedError;
  Set<dynamic> get usersWithInTenKilometers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res>;
  $Res call(
      {LocationPermission? permission,
      bool isInProgress,
      UserLocationModel userLocation,
      Set<dynamic> usersWithInTenKilometers});

  $UserLocationModelCopyWith<$Res> get userLocation;
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res> implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  final MapsState _value;
  // ignore: unused_field
  final $Res Function(MapsState) _then;

  @override
  $Res call({
    Object? permission = freezed,
    Object? isInProgress = freezed,
    Object? userLocation = freezed,
    Object? usersWithInTenKilometers = freezed,
  }) {
    return _then(_value.copyWith(
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as LocationPermission?,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as UserLocationModel,
      usersWithInTenKilometers: usersWithInTenKilometers == freezed
          ? _value.usersWithInTenKilometers
          : usersWithInTenKilometers // ignore: cast_nullable_to_non_nullable
              as Set<dynamic>,
    ));
  }

  @override
  $UserLocationModelCopyWith<$Res> get userLocation {
    return $UserLocationModelCopyWith<$Res>(_value.userLocation, (value) {
      return _then(_value.copyWith(userLocation: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocationPermission? permission,
      bool isInProgress,
      UserLocationModel userLocation,
      Set<dynamic> usersWithInTenKilometers});

  @override
  $UserLocationModelCopyWith<$Res> get userLocation;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? permission = freezed,
    Object? isInProgress = freezed,
    Object? userLocation = freezed,
    Object? usersWithInTenKilometers = freezed,
  }) {
    return _then(_$_Initial(
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as LocationPermission?,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as UserLocationModel,
      usersWithInTenKilometers: usersWithInTenKilometers == freezed
          ? _value._usersWithInTenKilometers
          : usersWithInTenKilometers // ignore: cast_nullable_to_non_nullable
              as Set<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {required this.permission,
      required this.isInProgress,
      required this.userLocation,
      required final Set<dynamic> usersWithInTenKilometers})
      : _usersWithInTenKilometers = usersWithInTenKilometers,
        super._();

  @override
  final LocationPermission? permission;
  @override
  final bool isInProgress;
  @override
  final UserLocationModel userLocation;
  final Set<dynamic> _usersWithInTenKilometers;
  @override
  Set<dynamic> get usersWithInTenKilometers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_usersWithInTenKilometers);
  }

  @override
  String toString() {
    return 'MapsState(permission: $permission, isInProgress: $isInProgress, userLocation: $userLocation, usersWithInTenKilometers: $usersWithInTenKilometers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.permission, permission) &&
            const DeepCollectionEquality()
                .equals(other.isInProgress, isInProgress) &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation) &&
            const DeepCollectionEquality().equals(
                other._usersWithInTenKilometers, _usersWithInTenKilometers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(permission),
      const DeepCollectionEquality().hash(isInProgress),
      const DeepCollectionEquality().hash(userLocation),
      const DeepCollectionEquality().hash(_usersWithInTenKilometers));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial extends MapsState {
  const factory _Initial(
      {required final LocationPermission? permission,
      required final bool isInProgress,
      required final UserLocationModel userLocation,
      required final Set<dynamic> usersWithInTenKilometers}) = _$_Initial;
  const _Initial._() : super._();

  @override
  LocationPermission? get permission => throw _privateConstructorUsedError;
  @override
  bool get isInProgress => throw _privateConstructorUsedError;
  @override
  UserLocationModel get userLocation => throw _privateConstructorUsedError;
  @override
  Set<dynamic> get usersWithInTenKilometers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
