import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_name_response_model.g.dart';

@JsonSerializable()
class StoreNameResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  final StoreData? data;

  StoreNameResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.data,
  });

  factory StoreNameResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StoreNameResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreNameResponseModelToJson(this);
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
  final double? distance;
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
  @JsonKey(name: 'sub_sections')
  final List<SubSection>? subSections;
  final List<Service>? services;
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
    this.subSections,
    this.services,
    this.addresses,
  });

  factory StoreData.fromJson(Map<String, dynamic> json) =>
      _$StoreDataFromJson(json);
  Map<String, dynamic> toJson() => _$StoreDataToJson(this);
}

@JsonSerializable()
class SubSection {
  final int? id;
  final String? title;

  SubSection({this.id, this.title});

  factory SubSection.fromJson(Map<String, dynamic> json) =>
      _$SubSectionFromJson(json);
  Map<String, dynamic> toJson() => _$SubSectionToJson(this);
}

@JsonSerializable()
class Service {
  final int? id;
  final String? title;
  final int? amount;
  final String? unit;
  final String? price;
  final int? delivery;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  @JsonKey(name: 'provider_name')
  final String? providerName;
  @JsonKey(name: 'section_title')
  final String? sectionTitle;
  final String? desc;
  final int? rate;
  @JsonKey(name: 'is_favourite')
  final bool? isFavourite;
  @JsonKey(name: 'first_image')
  final String? firstImage;
  final List<Offer>? offers;
  final List<ServiceImage>? images;

  Service({
    this.id,
    this.title,
    this.amount,
    this.unit,
    this.price,
    this.delivery,
    this.providerId,
    this.providerName,
    this.sectionTitle,
    this.desc,
    this.rate,
    this.isFavourite,
    this.firstImage,
    this.offers,
    this.images,
  });

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}

@JsonSerializable()
class Offer {
  final String? image; // فارغ الآن، حسب البيانات

  Offer({this.image});

  factory Offer.fromJson(Map<String, dynamic> json) =>
      _$OfferFromJson(json);
  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class ServiceImage {
  final String? image;

  ServiceImage({this.image});

  factory ServiceImage.fromJson(Map<String, dynamic> json) =>
      _$ServiceImageFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceImageToJson(this);
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
