// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoresResponseModel _$StoresResponseModelFromJson(Map<String, dynamic> json) =>
    StoresResponseModel(
      key: (json['key'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      showImage: json['show_image'] as bool?,
      notificationCount: (json['notification_count'] as num?)?.toInt(),
      sectionId: (json['section_id'] as num?)?.toInt(),
      section: json['section'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StoreData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StoresResponseModelToJson(
  StoresResponseModel instance,
) => <String, dynamic>{
  'key': instance.key,
  'msg': instance.msg,
  'show_image': instance.showImage,
  'notification_count': instance.notificationCount,
  'section_id': instance.sectionId,
  'section': instance.section,
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
  distance: (json['distance'] as num?)?.toInt(),
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
  sections: (json['sections'] as List<dynamic>?)
      ?.map((e) => StoreSection.fromJson(e as Map<String, dynamic>))
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
  'sections': instance.sections,
  'addresses': instance.addresses,
};

StoreSection _$StoreSectionFromJson(Map<String, dynamic> json) => StoreSection(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$StoreSectionToJson(StoreSection instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

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
