import 'package:json_annotation/json_annotation.dart';
part 'intro_response.g.dart';

@JsonSerializable()
class IntroResponse {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  final IntroData? data;

  IntroResponse({
    this.key,
    this.msg,
    this.showImage,
    this.data,
  });

  factory IntroResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroResponseFromJson(json);
  Map<String, dynamic> toJson() => _$IntroResponseToJson(this);
}

@JsonSerializable()
class IntroData {
  @JsonKey(name: 'first_title')
  final String? firstTitle;
  @JsonKey(name: 'first_desc')
  final String? firstDesc;
  @JsonKey(name: 'first_image')
  final String? firstImage;

  @JsonKey(name: 'second_title')
  final String? secondTitle;
  @JsonKey(name: 'second_desc')
  final String? secondDesc;
  @JsonKey(name: 'second_image')
  final String? secondImage;

  @JsonKey(name: 'third_title')
  final String? thirdTitle;
  @JsonKey(name: 'third_desc')
  final String? thirdDesc;
  @JsonKey(name: 'third_image')
  final String? thirdImage;

  IntroData({
    this.firstTitle,
    this.firstDesc,
    this.firstImage,
    this.secondTitle,
    this.secondDesc,
    this.secondImage,
    this.thirdTitle,
    this.thirdDesc,
    this.thirdImage,
  });

  factory IntroData.fromJson(Map<String, dynamic> json) =>
      _$IntroDataFromJson(json);
  Map<String, dynamic> toJson() => _$IntroDataToJson(this);
}
