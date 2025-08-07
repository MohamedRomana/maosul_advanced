import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../cache/cache_helper.dart';

class LocationHelper {
  static Future<Position?> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return await Geolocator.getCurrentPosition();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return null;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  static Future<Position> _savePosition(Position position) async {
    await CacheHelper.setLat(position.latitude);
    await CacheHelper.setLng(position.longitude);

    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    final address = placemarks.isNotEmpty ? placemarks[0].street : '';

    await CacheHelper.setAddress(address);

    return position;
  }
}
