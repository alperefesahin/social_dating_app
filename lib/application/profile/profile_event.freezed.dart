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
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
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
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) {
    return statusChanged(statusText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) {
    return statusChanged?.call(statusText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
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
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) {
    return aboutChanged(aboutText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) {
    return aboutChanged?.call(aboutText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) {
    return aboutChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) {
    return aboutChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
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
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameText});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$UsernameChanged));

  @override
  _$UsernameChanged get _value => super._value as _$UsernameChanged;

  @override
  $Res call({
    Object? usernameText = freezed,
  }) {
    return _then(_$UsernameChanged(
      usernameText: usernameText == freezed
          ? _value.usernameText
          : usernameText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged({required this.usernameText});

  @override
  final String usernameText;

  @override
  String toString() {
    return 'ProfileEvent.usernameChanged(usernameText: $usernameText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChanged &&
            const DeepCollectionEquality()
                .equals(other.usernameText, usernameText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usernameText));

  @JsonKey(ignore: true)
  @override
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) {
    return usernameChanged(usernameText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) {
    return usernameChanged?.call(usernameText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements ProfileEvent {
  const factory UsernameChanged({required final String usernameText}) =
      _$UsernameChanged;

  String get usernameText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
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
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) {
    return changeOnlineStatus(onlineStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) {
    return changeOnlineStatus?.call(onlineStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
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
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) {
    return changeOnlineStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) {
    return changeOnlineStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
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

/// @nodoc
abstract class _$$UpdateUserFileImgCopyWith<$Res> {
  factory _$$UpdateUserFileImgCopyWith(
          _$UpdateUserFileImg value, $Res Function(_$UpdateUserFileImg) then) =
      __$$UpdateUserFileImgCopyWithImpl<$Res>;
  $Res call({File imageFile});
}

/// @nodoc
class __$$UpdateUserFileImgCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$UpdateUserFileImgCopyWith<$Res> {
  __$$UpdateUserFileImgCopyWithImpl(
      _$UpdateUserFileImg _value, $Res Function(_$UpdateUserFileImg) _then)
      : super(_value, (v) => _then(v as _$UpdateUserFileImg));

  @override
  _$UpdateUserFileImg get _value => super._value as _$UpdateUserFileImg;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_$UpdateUserFileImg(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UpdateUserFileImg implements UpdateUserFileImg {
  const _$UpdateUserFileImg({required this.imageFile});

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ProfileEvent.updateUserFileImg(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserFileImg &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  _$$UpdateUserFileImgCopyWith<_$UpdateUserFileImg> get copyWith =>
      __$$UpdateUserFileImgCopyWithImpl<_$UpdateUserFileImg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusText) statusChanged,
    required TResult Function(String aboutText) aboutChanged,
    required TResult Function(String usernameText) usernameChanged,
    required TResult Function(bool onlineStatus) changeOnlineStatus,
    required TResult Function(File imageFile) updateUserFileImg,
  }) {
    return updateUserFileImg(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
  }) {
    return updateUserFileImg?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusText)? statusChanged,
    TResult Function(String aboutText)? aboutChanged,
    TResult Function(String usernameText)? usernameChanged,
    TResult Function(bool onlineStatus)? changeOnlineStatus,
    TResult Function(File imageFile)? updateUserFileImg,
    required TResult orElse(),
  }) {
    if (updateUserFileImg != null) {
      return updateUserFileImg(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(AboutChanged value) aboutChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(ChangeOnlineStatus value) changeOnlineStatus,
    required TResult Function(UpdateUserFileImg value) updateUserFileImg,
  }) {
    return updateUserFileImg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
  }) {
    return updateUserFileImg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(AboutChanged value)? aboutChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(ChangeOnlineStatus value)? changeOnlineStatus,
    TResult Function(UpdateUserFileImg value)? updateUserFileImg,
    required TResult orElse(),
  }) {
    if (updateUserFileImg != null) {
      return updateUserFileImg(this);
    }
    return orElse();
  }
}

abstract class UpdateUserFileImg implements ProfileEvent {
  const factory UpdateUserFileImg({required final File imageFile}) =
      _$UpdateUserFileImg;

  File get imageFile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateUserFileImgCopyWith<_$UpdateUserFileImg> get copyWith =>
      throw _privateConstructorUsedError;
}
