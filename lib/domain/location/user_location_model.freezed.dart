// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLocationModel {
  double? get latOfCurrentLocation => throw _privateConstructorUsedError;
  double? get longOfCurrentLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationModelCopyWith<UserLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationModelCopyWith<$Res> {
  factory $UserLocationModelCopyWith(
          UserLocationModel value, $Res Function(UserLocationModel) then) =
      _$UserLocationModelCopyWithImpl<$Res>;
  $Res call({double? latOfCurrentLocation, double? longOfCurrentLocation});
}

/// @nodoc
class _$UserLocationModelCopyWithImpl<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  _$UserLocationModelCopyWithImpl(this._value, this._then);

  final UserLocationModel _value;
  // ignore: unused_field
  final $Res Function(UserLocationModel) _then;

  @override
  $Res call({
    Object? latOfCurrentLocation = freezed,
    Object? longOfCurrentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      latOfCurrentLocation: latOfCurrentLocation == freezed
          ? _value.latOfCurrentLocation
          : latOfCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
      longOfCurrentLocation: longOfCurrentLocation == freezed
          ? _value.longOfCurrentLocation
          : longOfCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserLocationModelCopyWith<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  factory _$$_UserLocationModelCopyWith(_$_UserLocationModel value,
          $Res Function(_$_UserLocationModel) then) =
      __$$_UserLocationModelCopyWithImpl<$Res>;
  @override
  $Res call({double? latOfCurrentLocation, double? longOfCurrentLocation});
}

/// @nodoc
class __$$_UserLocationModelCopyWithImpl<$Res>
    extends _$UserLocationModelCopyWithImpl<$Res>
    implements _$$_UserLocationModelCopyWith<$Res> {
  __$$_UserLocationModelCopyWithImpl(
      _$_UserLocationModel _value, $Res Function(_$_UserLocationModel) _then)
      : super(_value, (v) => _then(v as _$_UserLocationModel));

  @override
  _$_UserLocationModel get _value => super._value as _$_UserLocationModel;

  @override
  $Res call({
    Object? latOfCurrentLocation = freezed,
    Object? longOfCurrentLocation = freezed,
  }) {
    return _then(_$_UserLocationModel(
      latOfCurrentLocation: latOfCurrentLocation == freezed
          ? _value.latOfCurrentLocation
          : latOfCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
      longOfCurrentLocation: longOfCurrentLocation == freezed
          ? _value.longOfCurrentLocation
          : longOfCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_UserLocationModel extends _UserLocationModel {
  const _$_UserLocationModel(
      {required this.latOfCurrentLocation, required this.longOfCurrentLocation})
      : super._();

  @override
  final double? latOfCurrentLocation;
  @override
  final double? longOfCurrentLocation;

  @override
  String toString() {
    return 'UserLocationModel(latOfCurrentLocation: $latOfCurrentLocation, longOfCurrentLocation: $longOfCurrentLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLocationModel &&
            const DeepCollectionEquality()
                .equals(other.latOfCurrentLocation, latOfCurrentLocation) &&
            const DeepCollectionEquality()
                .equals(other.longOfCurrentLocation, longOfCurrentLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latOfCurrentLocation),
      const DeepCollectionEquality().hash(longOfCurrentLocation));

  @JsonKey(ignore: true)
  @override
  _$$_UserLocationModelCopyWith<_$_UserLocationModel> get copyWith =>
      __$$_UserLocationModelCopyWithImpl<_$_UserLocationModel>(
          this, _$identity);
}

abstract class _UserLocationModel extends UserLocationModel {
  const factory _UserLocationModel(
      {required final double? latOfCurrentLocation,
      required final double? longOfCurrentLocation}) = _$_UserLocationModel;
  const _UserLocationModel._() : super._();

  @override
  double? get latOfCurrentLocation => throw _privateConstructorUsedError;
  @override
  double? get longOfCurrentLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserLocationModelCopyWith<_$_UserLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
