import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_name_body_model.g.dart';

@JsonSerializable()
class StoreNameBodyModel {
  final String lang;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "provider_id")
  final String providerId;
  final String lat;
  final String lng;

  StoreNameBodyModel({
    required this.lang,
    required this.userId,
    required this.providerId,
    required this.lat,
    required this.lng,
  });

  factory StoreNameBodyModel.fromJson(Map<String, dynamic> json) =>
      _$StoreNameBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreNameBodyModelToJson(this);
}
