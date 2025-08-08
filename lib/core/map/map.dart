// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maosul_advanced/core/helper/extentions.dart';
import '../../features/auth/register/logic/register_cubit.dart';
import '../../features/users/home_layout/screens/cart/logic/cubit/store_order_cubit.dart';
import '../../gen/fonts.gen.dart';
import '../constants/colors.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text.dart';
import 'location_helper.dart';
import 'logic/cubit/map_cubit.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  static Position? position;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  var myMarkers = HashSet<Marker>();

  @override
  void initState() {
    context.read<MapCubit>().address = null;
    context.read<MapCubit>().lat = null;
    context.read<MapCubit>().lng = null;
    getMyCurrentLocation();
    super.initState();
  }

  Future<void> getMyCurrentLocation() async {
    position = await LocationHelper.determinePosition().whenComplete(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            // topRight: Radius.circular(20.r),
            // topLeft: Radius.circular(20.r),
          ),
        ),
        child: position != null
            ? Stack(
                children: [
                  GoogleMap(
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(position!.latitude, position!.longitude),
                      zoom: 15,
                    ),
                    onTap: (argument) async {
                      myMarkers.clear();
                      final placeMarkes = await placemarkFromCoordinates(
                        argument.latitude,
                        argument.longitude,
                      );
                      context.read<MapCubit>().changeAddress(
                        newAddress: placeMarkes[0].street ?? '',
                      );
                      context.read<StoreOrderCubit>().address =
                          context
                                  .read<RegisterCubit>()
                                  .locationController
                                  .text =
                              context.read<MapCubit>().address ?? "";
                      debugPrint(context.read<MapCubit>().address);
                      setState(() {
                        context
                            .read<StoreOrderCubit>()
                            .lat = context.read<RegisterCubit>().lat =
                            context.read<MapCubit>().lat = argument.latitude;
                        context
                            .read<StoreOrderCubit>()
                            .lng = context.read<RegisterCubit>().lng =
                            context.read<MapCubit>().lng = argument.longitude;
                        debugPrint(
                          '${context.read<MapCubit>().lat} + ${context.read<MapCubit>().lng}',
                        );
                      });
                      myMarkers.add(
                        Marker(
                          markerId: const MarkerId('2'),
                          position: argument,
                          infoWindow: InfoWindow(
                            title: context.read<MapCubit>().address,
                          ),
                        ),
                      );
                    },
                    onMapCreated:
                        (GoogleMapController googleMapController) async {
                          _controller.complete(googleMapController);
                          final placeMarks = await placemarkFromCoordinates(
                            position!.latitude,
                            position!.longitude,
                          );
                          setState(() {
                            context.read<MapCubit>().changeAddress(
                              newAddress: placeMarks[0].street ?? '',
                            );
                            context
                                .read<StoreOrderCubit>()
                                .lat = context.read<RegisterCubit>().lat =
                                context.read<MapCubit>().lat =
                                    position!.latitude;
                            context
                                .read<StoreOrderCubit>()
                                .lng = context.read<RegisterCubit>().lng =
                                context.read<MapCubit>().lng =
                                    position!.longitude;

                            context.read<StoreOrderCubit>().address =
                                context
                                        .read<RegisterCubit>()
                                        .locationController
                                        .text =
                                    context.read<MapCubit>().address ?? "";

                            debugPrint(context.read<MapCubit>().address);
                            debugPrint(context.read<MapCubit>().lat.toString());
                            debugPrint(context.read<MapCubit>().lng.toString());

                            myMarkers.add(
                              Marker(
                                markerId: const MarkerId('1'),
                                position: LatLng(
                                  position!.latitude,
                                  position!.longitude,
                                ),
                                infoWindow: InfoWindow(
                                  title:
                                      context.read<MapCubit>().address ??
                                      "location",
                                ),
                              ),
                            );
                          });
                        },
                    markers: myMarkers,
                  ),
                  PositionedDirectional(
                    top: 16.h,
                    end: 16.w,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      mini: true,
                      child: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 120.h,
                    start: 16.w,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      mini: true,
                      child: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          context.read<MapCubit>().address = null;
                          context.read<MapCubit>().lat = null;
                          context.read<MapCubit>().lng = null;
                          context.read<RegisterCubit>().lat = 0.0;
                          context.read<RegisterCubit>().lng = 0.0;
                          context
                                  .read<RegisterCubit>()
                                  .locationController
                                  .text =
                              "";
                          context.read<StoreOrderCubit>().address = "";
                          context.read<StoreOrderCubit>().lat = 0.0;
                          context.read<StoreOrderCubit>().lng = 0.0;
                          myMarkers.clear();
                        });

                        debugPrint("تم حذف الموقع");
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 50.h,
                    right: 16.w,
                    left: 16.w,
                    child: AppButton(
                      width: 311.w,
                      onPressed: () {
                        final mapCubit = context.read<MapCubit>();
                        final storeOrderCubit = context.read<StoreOrderCubit>();

                        storeOrderCubit.lat = mapCubit.lat ?? 0.0;
                        storeOrderCubit.lng = mapCubit.lng ?? 0.0;
                        storeOrderCubit.address = mapCubit.address ?? '';
                        Navigator.pop(context);
                      },
                      child: AppText(
                        text: 'تاكيد الموقع',
                        size: 21.sp,
                        color: Colors.white,
                        family: FontFamily.cairo,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
      ),
    );
  }
}
