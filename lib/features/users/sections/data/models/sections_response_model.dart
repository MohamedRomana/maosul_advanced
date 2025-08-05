import 'package:freezed_annotation/freezed_annotation.dart';
part 'sections_response_model.g.dart';

@JsonSerializable()
class SectionsResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  final SectionsData? data;

  SectionsResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.data,
  });

  factory SectionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SectionsResponseModelToJson(this);
}

@JsonSerializable()
class SectionsData {
  final List<Section>? sections;
  final List<Country>? countries;

  SectionsData({this.sections, this.countries});

  factory SectionsData.fromJson(Map<String, dynamic> json) =>
      _$SectionsDataFromJson(json);
  Map<String, dynamic> toJson() => _$SectionsDataToJson(this);
}

@JsonSerializable()
class Section {
  final int? id;
  final String? title;
  @JsonKey(name: 'show_data')
  final bool? showData;
  final String? image;

  Section({this.id, this.title, this.showData, this.image});

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Country {
  final int? id;
  final String? title;
  final String? code;

  Country({this.id, this.title, this.code});

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
