import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather/core/config/index.dart' show AppTextStyles, F;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    var status = await Permission.location.status;
    Position? position;
    if (status.isGranted) {
      position = await Geolocator.getCurrentPosition();
    } else if (status.isDenied) {
      status = await Permission.location.request();
      if (status.isGranted) {
        position = await Geolocator.getCurrentPosition();
      } else {
        position = null;
      }
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      position = null;
    }

    setState(() {
      currentLocation = LatLng(position!.latitude, position.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,
      body:
          currentLocation == null
              ? Center(child: CircularProgressIndicator())
              : Stack(
                children: [
                  GoogleMap(
                    onMapCreated: (controller) {
                      setState(() {
                        mapController = controller;
                      });
                    },
                    initialCameraPosition: CameraPosition(target: currentLocation!, zoom: 13.0),
                    markers: {
                      Marker(markerId: MarkerId('currentLocation'), position: currentLocation!),
                    },
                  ),
                  Align(
                    alignment: Alignment.topCenter,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(F.title, style: AppTextStyles.headlineMedium(context)),
                    ),
                  ),
                ],
              ),
    );
  }
}
