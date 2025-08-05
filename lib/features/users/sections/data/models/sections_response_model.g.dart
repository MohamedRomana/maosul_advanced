// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionsResponseModel _$SectionsResponseModelFromJson(
  Map<String, dynamic> json,
) => SectionsResponseModel(
  key: (json['key'] as num?)?.toInt(),
  msg: json['msg'] as String?,
  showImage: json['show_image'] as bool?,
  notificationCount: (json['notification_count'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : SectionsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SectionsResponseModelToJson(
  SectionsResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
  'notification_count': instance.notificationCount,
  'data': instance.data,
};

SectionsData _$SectionsDataFromJson(Map<String, dynamic> json) => SectionsData(
  sections: (json['sections'] as List<dynamic>?)
      ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
      .toList(),
  countries: (json['countries'] as List<dynamic>?)
      ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SectionsDataToJson(SectionsData instance) =>
    <String, dynamic>{
      'sections': instance.sections,
      'countries': instance.countries,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  showData: json['show_data'] as bool?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'show_data': instance.showData,
  'image': instance.image,
};

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'code': instance.code,
};
