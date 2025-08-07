import 'package:freezed_annotation/freezed_annotation.dart';
part 'show_product_response_model.g.dart';

@JsonSerializable()
class ShowProductResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;
  final ProductData? data;

  ShowProductResponseModel({
    this.key,
    this.msg,
    this.showImage,
    this.notificationCount,
    this.data,
  });

  factory ShowProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ShowProductResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ShowProductResponseModelToJson(this);
}

@JsonSerializable()
class ProductData {
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

  ProductData({
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

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}

@JsonSerializable()
class Offer {
  final String? image;

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
