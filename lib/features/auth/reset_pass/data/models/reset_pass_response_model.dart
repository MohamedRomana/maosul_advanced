import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_pass_response_model.g.dart';

@JsonSerializable()
class ResetPassResponseModel {
  final String? msg;
  final int? key;
  @JsonKey(name: 'show_image')
  final bool? showImage;

  ResetPassResponseModel({this.msg, this.key, this.showImage});

  factory ResetPassResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPassResponseModelFromJson(json);

}
