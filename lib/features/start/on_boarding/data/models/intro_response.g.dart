// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntroResponse _$IntroResponseFromJson(Map<String, dynamic> json) =>
    IntroResponse(
      key: (json['key'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      showImage: json['show_image'] as bool?,
      data: json['data'] == null
          ? null
          : IntroData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntroResponseToJson(IntroResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'show_image': instance.showImage,
      'data': instance.data,
    };

IntroData _$IntroDataFromJson(Map<String, dynamic> json) => IntroData(
  firstTitle: json['first_title'] as String?,
  firstDesc: json['first_desc'] as String?,
  firstImage: json['first_image'] as String?,
  secondTitle: json['second_title'] as String?,
  secondDesc: json['second_desc'] as String?,
  secondImage: json['second_image'] as String?,
  thirdTitle: json['third_title'] as String?,
  thirdDesc: json['third_desc'] as String?,
  thirdImage: json['third_image'] as String?,
);

Map<String, dynamic> _$IntroDataToJson(IntroData instance) => <String, dynamic>{
  'first_title': instance.firstTitle,
  'first_desc': instance.firstDesc,
  'first_image': instance.firstImage,
  'second_title': instance.secondTitle,
  'second_desc': instance.secondDesc,
  'second_image': instance.secondImage,
  'third_title': instance.thirdTitle,
  'third_desc': instance.thirdDesc,
  'third_image': instance.thirdImage,
};
