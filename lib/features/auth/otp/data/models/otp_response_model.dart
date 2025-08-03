import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_response_model.g.dart';

@JsonSerializable()
class OtpResponseModel {
  final String? msg;
  final int? key;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  OtpResponseModel({this.msg, this.key, this.showImage});

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseModelFromJson(json);
}
