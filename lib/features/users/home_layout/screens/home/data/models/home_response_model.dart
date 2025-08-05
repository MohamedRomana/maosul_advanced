import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  final HomeData? data;

  HomeResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.data,
  });

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}

@JsonSerializable()
class HomeData {
  final List<SliderModel>? sliders;
  final List<Section>? sections;
  @JsonKey(name: 'best_providers')
  final List<Provider>? bestProviders;
  @JsonKey(name: 'near_providers')
  final List<Provider>? nearProviders;

  HomeData({
    this.sliders,
    this.sections,
    this.bestProviders,
    this.nearProviders,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}

@JsonSerializable()
class SliderModel {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  final String? image;

  SliderModel({
    this.id,
    this.userId,
    this.image,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
  Map<String, dynamic> toJson() => _$SliderModelToJson(this);
}

@JsonSerializable()
class Section {
  final int? id;
  final String? title;
  @JsonKey(name: 'show_data')
  final bool? showData;
  final String? image;

  Section({
    this.id,
    this.title,
    this.showData,
    this.image,
  });

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Provider {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
  @JsonKey(name: 'full_phone')
  final String? fullPhone;
  final String? whatsapp;
  @JsonKey(name: 'show_data')
  final bool? showData;
  @JsonKey(name: 'section_id')
  final int? sectionId;
  final String? section;
  final String? country;
  final String? city;
  final String? address;
  final double? lat;
  final double? lng;
  final int? distance;
  final int? rate;
  @JsonKey(name: 'has_delivery')
  final bool? hasDelivery;
  final int? delivery;
  @JsonKey(name: 'delivery_time')
  final int? deliveryTime;
  final int? discount;
  final bool? cash;
  final bool? transfer;
  final bool? online;
  @JsonKey(name: 'not_now')
  final bool? notNow;
  @JsonKey(name: 'not_now_total')
  final int? notNowTotal;
  @JsonKey(name: 'not_now_duration')
  final int? notNowDuration;
  final String? avatar;
  final List<Section>? sections;
  final List<dynamic>? addresses;

  Provider({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.phoneCode,
    this.fullPhone,
    this.whatsapp,
    this.showData,
    this.sectionId,
    this.section,
    this.country,
    this.city,
    this.address,
    this.lat,
    this.lng,
    this.distance,
    this.rate,
    this.hasDelivery,
    this.delivery,
    this.deliveryTime,
    this.discount,
    this.cash,
    this.transfer,
    this.online,
    this.notNow,
    this.notNowTotal,
    this.notNowDuration,
    this.avatar,
    this.sections,
    this.addresses,
  });

  factory Provider.fromJson(Map<String, dynamic> json) =>
      _$ProviderFromJson(json);
  Map<String, dynamic> toJson() => _$ProviderToJson(this);
}