// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_name_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreNameResponseModel _$StoreNameResponseModelFromJson(
  Map<String, dynamic> json,
) => StoreNameResponseModel(
  key: (json['key'] as num?)?.toInt(),
  msg: json['msg'] as String?,
  showImage: json['show_image'] as bool?,
  notificationCount: (json['notification_count'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : StoreData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StoreNameResponseModelToJson(
  StoreNameResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
  'notification_count': instance.notificationCount,
  'data': instance.data,
};

StoreData _$StoreDataFromJson(Map<String, dynamic> json) => StoreData(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  phoneCode: json['phone_code'] as String?,
  fullPhone: json['full_phone'] as String?,
  whatsapp: json['whatsapp'] as String?,
  showData: json['show_data'] as bool?,
  sectionId: (json['section_id'] as num?)?.toInt(),
  section: json['section'] as String?,
  country: json['country'] as String?,
  city: json['city'] as String?,
  address: json['address'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  distance: (json['distance'] as num?)?.toDouble(),
  rate: (json['rate'] as num?)?.toInt(),
  hasDelivery: json['has_delivery'] as bool?,
  delivery: (json['delivery'] as num?)?.toInt(),
  deliveryTime: (json['delivery_time'] as num?)?.toInt(),
  discount: (json['discount'] as num?)?.toInt(),
  cash: json['cash'] as bool?,
  transfer: json['transfer'] as bool?,
  online: json['online'] as bool?,
  notNow: json['not_now'] as bool?,
  notNowTotal: (json['not_now_total'] as num?)?.toInt(),
  notNowDuration: (json['not_now_duration'] as num?)?.toInt(),
  avatar: json['avatar'] as String?,
  subSections: (json['sub_sections'] as List<dynamic>?)
      ?.map((e) => SubSection.fromJson(e as Map<String, dynamic>))
      .toList(),
  services: (json['services'] as List<dynamic>?)
      ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
      .toList(),
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StoreDataToJson(StoreData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'phone_code': instance.phoneCode,
  'full_phone': instance.fullPhone,
  'whatsapp': instance.whatsapp,
  'show_data': instance.showData,
  'section_id': instance.sectionId,
  'section': instance.section,
  'country': instance.country,
  'city': instance.city,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
  'distance': instance.distance,
  'rate': instance.rate,
  'has_delivery': instance.hasDelivery,
  'delivery': instance.delivery,
  'delivery_time': instance.deliveryTime,
  'discount': instance.discount,
  'cash': instance.cash,
  'transfer': instance.transfer,
  'online': instance.online,
  'not_now': instance.notNow,
  'not_now_total': instance.notNowTotal,
  'not_now_duration': instance.notNowDuration,
  'avatar': instance.avatar,
  'sub_sections': instance.subSections,
  'services': instance.services,
  'addresses': instance.addresses,
};

SubSection _$SubSectionFromJson(Map<String, dynamic> json) => SubSection(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$SubSectionToJson(SubSection instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
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

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
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

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  address: json['address'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};
