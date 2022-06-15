// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$StatusChangedCopyWith<$Res> {
  factory _$$StatusChangedCopyWith(
          _$StatusChanged value, $Res Function(_$StatusChanged) then) =
      __$$StatusChangedCopyWithImpl<$Res>;
  $Res call({String statusText});
}

/// @nodoc
class __$$StatusChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$StatusChangedCopyWith<$Res> {
  __$$StatusChangedCopyWithImpl(
      _$StatusChanged _value, $Res Function(_$StatusChanged) _then)
      : super(_value, (v) => _then(v as _$StatusChanged));

  @override
  _$StatusChanged get _value => super._value as _$StatusChanged;

  @override
  $Res call({
    Object? statusText = freezed,
  }) {
    return _then(_$StatusChanged(
      statusText: statusText == freezed
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusChanged implements StatusChanged {
  const _$StatusChanged({required this.statusText});

  @override
  final String statusText;

  @override
  String toString() {
    return 'ProfileEvent.statusChanged(statusText: $statusText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChanged &&
            const DeepCollectionEquality()
                .equals(other.statusText, statusText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statusText));

  @JsonKey(ignore: true)
  @override
  _$$StatusChangedCopyWith<_$StatusChanged> get copyWith =>
      __$$StatusChangedCopyWithImpl<_$StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
  }) {
    return statusChanged(statusText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
  }) {
    return statusChanged?.call(statusText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(statusText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class StatusChanged implements ProfileEvent {
  const factory StatusChanged({required final String statusText}) =
      _$StatusChanged;

  String get statusText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$StatusChangedCopyWith<_$StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AboutChangedCopyWith<$Res> {
  factory _$$AboutChangedCopyWith(
          _$AboutChanged value, $Res Function(_$AboutChanged) then) =
      __$$AboutChangedCopyWithImpl<$Res>;
  $Res call({String aboutText});
}

/// @nodoc
class __$$AboutChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$AboutChangedCopyWith<$Res> {
  __$$AboutChangedCopyWithImpl(
      _$AboutChanged _value, $Res Function(_$AboutChanged) _then)
      : super(_value, (v) => _then(v as _$AboutChanged));

  @override
  _$AboutChanged get _value => super._value as _$AboutChanged;

  @override
  $Res call({
    Object? aboutText = freezed,
  }) {
    return _then(_$AboutChanged(
      aboutText: aboutText == freezed
          ? _value.aboutText
          : aboutText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AboutChanged implements AboutChanged {
  const _$AboutChanged({required this.aboutText});

  @override
  final String aboutText;

  @override
  String toString() {
    return 'ProfileEvent.aboutChanged(aboutText: $aboutText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutChanged &&
            const DeepCollectionEquality().equals(other.aboutText, aboutText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(aboutText));

  @JsonKey(ignore: true)
  @override
  _$$AboutChangedCopyWith<_$AboutChanged> get copyWith =>
      __$$AboutChangedCopyWithImpl<_$AboutChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
  }) {
    return aboutChanged(aboutText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
  }) {
    return aboutChanged?.call(aboutText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (aboutChanged != null) {
      return aboutChanged(aboutText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
  }) {
    return aboutChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
  }) {
    return aboutChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (aboutChanged != null) {
      return aboutChanged(this);
    }
    return orElse();
  }
}

abstract class AboutChanged implements ProfileEvent {
  const factory AboutChanged({required final String aboutText}) =
      _$AboutChanged;

  String get aboutText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AboutChangedCopyWith<_$AboutChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeOnlineStatusCopyWith<$Res> {
  factory _$$ChangeOnlineStatusCopyWith(_$ChangeOnlineStatus value,
          $Res Function(_$ChangeOnlineStatus) then) =
      __$$ChangeOnlineStatusCopyWithImpl<$Res>;
  $Res call({bool onlineStatus});
}

/// @nodoc
class __$$ChangeOnlineStatusCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ChangeOnlineStatusCopyWith<$Res> {
  __$$ChangeOnlineStatusCopyWithImpl(
      _$ChangeOnlineStatus _value, $Res Function(_$ChangeOnlineStatus) _then)
      : super(_value, (v) => _then(v as _$ChangeOnlineStatus));

  @override
  _$ChangeOnlineStatus get _value => super._value as _$ChangeOnlineStatus;

  @override
  $Res call({
    Object? onlineStatus = freezed,
  }) {
    return _then(_$ChangeOnlineStatus(
      onlineStatus: onlineStatus == freezed
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeOnlineStatus implements ChangeOnlineStatus {
  const _$ChangeOnlineStatus({required this.onlineStatus});

  @override
  final bool onlineStatus;

  @override
  String toString() {
    return 'ProfileEvent.changeOnlineStatus(onlineStatus: $onlineStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOnlineStatus &&
            const DeepCollectionEquality()
                .equals(other.onlineStatus, onlineStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(onlineStatus));

  @JsonKey(ignore: true)
  @override
  _$$ChangeOnlineStatusCopyWith<_$ChangeOnlineStatus> get copyWith =>
      __$$ChangeOnlineStatusCopyWithImpl<_$ChangeOnlineStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
  }) {
    return changeOnlineStatus(onlineStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
  }) {
    return changeOnlineStatus?.call(onlineStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (changeOnlineStatus != null) {
      return changeOnlineStatus(onlineStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
  }) {
    return changeOnlineStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
  }) {
    return changeOnlineStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    required TResult orElse(),
  }) {
    if (changeOnlineStatus != null) {
      return changeOnlineStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeOnlineStatus implements ProfileEvent {
  const factory ChangeOnlineStatus({required final bool onlineStatus}) =
      _$ChangeOnlineStatus;

  bool get onlineStatus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeOnlineStatusCopyWith<_$ChangeOnlineStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
