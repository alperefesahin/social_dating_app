// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'maps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapsState {
  UserLocationModel get currentUserLocation =>
      throw _privateConstructorUsedError;
  LocationPermission get locationPermission =>
      throw _privateConstructorUsedError;
  Set<Marker> get markerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res>;
  $Res call(
      {UserLocationModel currentUserLocation,
      LocationPermission locationPermission,
      Set<Marker> markerList});

  $UserLocationModelCopyWith<$Res> get currentUserLocation;
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res> implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  final MapsState _value;
  // ignore: unused_field
  final $Res Function(MapsState) _then;

  @override
  $Res call({
    Object? currentUserLocation = freezed,
    Object? locationPermission = freezed,
    Object? markerList = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as UserLocationModel,
      locationPermission: locationPermission == freezed
          ? _value.locationPermission
          : locationPermission // ignore: cast_nullable_to_non_nullable
              as LocationPermission,
      markerList: markerList == freezed
          ? _value.markerList
          : markerList // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }

  @override
  $UserLocationModelCopyWith<$Res> get currentUserLocation {
    return $UserLocationModelCopyWith<$Res>(_value.currentUserLocation,
        (value) {
      return _then(_value.copyWith(currentUserLocation: value));
    });
  }
}

/// @nodoc
abstract class _$$_MapsStateCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$$_MapsStateCopyWith(
          _$_MapsState value, $Res Function(_$_MapsState) then) =
      __$$_MapsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserLocationModel currentUserLocation,
      LocationPermission locationPermission,
      Set<Marker> markerList});

  @override
  $UserLocationModelCopyWith<$Res> get currentUserLocation;
}

/// @nodoc
class __$$_MapsStateCopyWithImpl<$Res> extends _$MapsStateCopyWithImpl<$Res>
    implements _$$_MapsStateCopyWith<$Res> {
  __$$_MapsStateCopyWithImpl(
      _$_MapsState _value, $Res Function(_$_MapsState) _then)
      : super(_value, (v) => _then(v as _$_MapsState));

  @override
  _$_MapsState get _value => super._value as _$_MapsState;

  @override
  $Res call({
    Object? currentUserLocation = freezed,
    Object? locationPermission = freezed,
    Object? markerList = freezed,
  }) {
    return _then(_$_MapsState(
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as UserLocationModel,
      locationPermission: locationPermission == freezed
          ? _value.locationPermission
          : locationPermission // ignore: cast_nullable_to_non_nullable
              as LocationPermission,
      markerList: markerList == freezed
          ? _value._markerList
          : markerList // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$_MapsState extends _MapsState {
  _$_MapsState(
      {required this.currentUserLocation,
      required this.locationPermission,
      required final Set<Marker> markerList})
      : _markerList = markerList,
        super._();

  @override
  final UserLocationModel currentUserLocation;
  @override
  final LocationPermission locationPermission;
  final Set<Marker> _markerList;
  @override
  Set<Marker> get markerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markerList);
  }

  @override
  String toString() {
    return 'MapsState(currentUserLocation: $currentUserLocation, locationPermission: $locationPermission, markerList: $markerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsState &&
            const DeepCollectionEquality()
                .equals(other.currentUserLocation, currentUserLocation) &&
            const DeepCollectionEquality()
                .equals(other.locationPermission, locationPermission) &&
            const DeepCollectionEquality()
                .equals(other._markerList, _markerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentUserLocation),
      const DeepCollectionEquality().hash(locationPermission),
      const DeepCollectionEquality().hash(_markerList));

  @JsonKey(ignore: true)
  @override
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      __$$_MapsStateCopyWithImpl<_$_MapsState>(this, _$identity);
}

abstract class _MapsState extends MapsState {
  factory _MapsState(
      {required final UserLocationModel currentUserLocation,
      required final LocationPermission locationPermission,
      required final Set<Marker> markerList}) = _$_MapsState;
  _MapsState._() : super._();

  @override
  UserLocationModel get currentUserLocation =>
      throw _privateConstructorUsedError;
  @override
  LocationPermission get locationPermission =>
      throw _privateConstructorUsedError;
  @override
  Set<Marker> get markerList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}
