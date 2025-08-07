import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_to_cart_body_model.g.dart';

@JsonSerializable()
class AddToCartBodyModel {
  final String lang;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "service_id")
  final String serviceId;
  final String count;
  final String notes;

  AddToCartBodyModel({
    required this.lang,
    required this.userId,
    required this.serviceId,
    required this.count,
    required this.notes,
  });

  factory AddToCartBodyModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartBodyModelToJson(this);
}
