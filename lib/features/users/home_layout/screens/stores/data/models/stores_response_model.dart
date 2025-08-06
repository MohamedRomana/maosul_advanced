import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_response_model.g.dart';

@JsonSerializable()
class StoresResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  @JsonKey(name: 'section_id')
  final int? sectionId;
  final String? section;
  final List<StoreData>? data;

  StoresResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.sectionId,
    this.section,
    this.data,
  });

  factory StoresResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StoresResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoresResponseModelToJson(this);
}

@JsonSerializable()
class StoreData {
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
  final List<StoreSection>? sections;
  final List<Address>? addresses;

  StoreData({
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

  factory StoreData.fromJson(Map<String, dynamic> json) =>
      _$StoreDataFromJson(json);
  Map<String, dynamic> toJson() => _$StoreDataToJson(this);
}

@JsonSerializable()
class StoreSection {
  final int? id;
  final String? title;

  StoreSection({this.id, this.title});

  factory StoreSection.fromJson(Map<String, dynamic> json) =>
      _$StoreSectionFromJson(json);
  Map<String, dynamic> toJson() => _$StoreSectionToJson(this);
}

@JsonSerializable()
class Address {
  final int? id;
  final String? title;
  final String? address;
  final double? lat;
  final double? lng;

  Address({this.id, this.title, this.address, this.lat, this.lng});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
