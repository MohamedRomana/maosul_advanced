import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_to_cart_response_model.g.dart';

@JsonSerializable()
class AddToCartResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;

  const AddToCartResponseModel({
    required this.key,
    required this.msg,
    required this.showImage,
  });

  factory AddToCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartResponseModelToJson(this);
}
