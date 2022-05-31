import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_location_model.freezed.dart';

@freezed
class UserLocationModel with _$UserLocationModel {
  const factory UserLocationModel({
    required double? latOfCurrentLocation,
    required double? longOfCurrentLocation,
  }) = _UserLocationModel;
  const UserLocationModel._();
  
  factory UserLocationModel.empty() => const UserLocationModel(
        latOfCurrentLocation: null,
        longOfCurrentLocation: null,
      );
}
