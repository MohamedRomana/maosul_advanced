import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_order_body_model.g.dart';

@JsonSerializable()
class StoreOrderBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  final String title;
  final String address;
  final String lat;
  final String lng;

  StoreOrderBodyModel({
    required this.lang,
    required this.userId,
    required this.paymentMethod,
    required this.title,
    required this.address,
    required this.lat,
    required this.lng,
  });

  factory StoreOrderBodyModel.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreOrderBodyModelToJson(this);
}
