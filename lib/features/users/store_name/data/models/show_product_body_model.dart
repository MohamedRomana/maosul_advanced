import 'package:freezed_annotation/freezed_annotation.dart';
part 'show_product_body_model.g.dart';

@JsonSerializable()
class ShowProductBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'service_id')
  final String serviceId;

  const ShowProductBodyModel({
    required this.lang,
    required this.userId,
    required this.serviceId,
  });

  factory ShowProductBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ShowProductBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShowProductBodyModelToJson(this);
}
