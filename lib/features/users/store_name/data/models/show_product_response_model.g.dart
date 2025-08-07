// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowProductResponseModel _$ShowProductResponseModelFromJson(
  Map<String, dynamic> json,
) => ShowProductResponseModel(
  key: (json['key'] as num?)?.toInt(),
  msg: json['msg'] as String?,
  showImage: json['show_image'] as bool?,
  notificationCount: (json['notification_count'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : ProductData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ShowProductResponseModelToJson(
  ShowProductResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
  'notification_count': instance.notificationCount,
  'data': instance.data,
};

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  amount: (json['amount'] as num?)?.toInt(),
  unit: json['unit'] as String?,
  price: json['price'] as String?,
  delivery: (json['delivery'] as num?)?.toInt(),
  providerId: (json['provider_id'] as num?)?.toInt(),
  providerName: json['provider_name'] as String?,
  sectionTitle: json['section_title'] as String?,
  desc: json['desc'] as String?,
  rate: (json['rate'] as num?)?.toInt(),
  isFavourite: json['is_favourite'] as bool?,
  firstImage: json['first_image'] as String?,
  offers: (json['offers'] as List<dynamic>?)
      ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
      .toList(),
  images: (json['images'] as List<dynamic>?)
      ?.map((e) => ServiceImage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'unit': instance.unit,
      'price': instance.price,
      'delivery': instance.delivery,
      'provider_id': instance.providerId,
      'provider_name': instance.providerName,
      'section_title': instance.sectionTitle,
      'desc': instance.desc,
      'rate': instance.rate,
      'is_favourite': instance.isFavourite,
      'first_image': instance.firstImage,
      'offers': instance.offers,
      'images': instance.images,
    };

Offer _$OfferFromJson(Map<String, dynamic> json) =>
    Offer(image: json['image'] as String?);

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
  'image': instance.image,
};

ServiceImage _$ServiceImageFromJson(Map<String, dynamic> json) =>
    ServiceImage(image: json['image'] as String?);

Map<String, dynamic> _$ServiceImageToJson(ServiceImage instance) =>
    <String, dynamic>{'image': instance.image};
