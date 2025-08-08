import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_body_model.g.dart';

@JsonSerializable()
class CartBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;

  CartBodyModel({
    required this.lang,
    required this.userId,
  });

  factory CartBodyModel.fromJson(Map<String, dynamic> json) =>
      _$CartBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartBodyModelToJson(this);
}
