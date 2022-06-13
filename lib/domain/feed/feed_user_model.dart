import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_user_model.freezed.dart';

@freezed
class FeedUserModel with _$FeedUserModel {
  const factory FeedUserModel({
    required String imageUrl,
    required String status,
    required String userName,
  }) = _FeedUserModel;

  factory FeedUserModel.empty() => const FeedUserModel(
        imageUrl: '',
        status: '',
        userName: '',
      );
}
