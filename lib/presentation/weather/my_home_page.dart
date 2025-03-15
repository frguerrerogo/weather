import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  Position? _currentPosition;
  String _locationMessage = "Obteniendo ubicación...";

  @override
  void initState() {
    super.initState();
    // Llama a la función para obtener la ubicación al iniciar
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    // Verifica si los servicios de ubicación están habilitados
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _locationMessage = "Los servicios de ubicación están desactivados.";
      });
      return;
    }

    // Verifica los permisos de ubicación
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _locationMessage = "Los permisos de ubicación fueron denegados.";
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _locationMessage = "Los permisos de ubicación están denegados permanentemente.";
      });
      return;
    }

    // Obtiene la ubicación actual
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      print("Ubicación obtenida: Lat: ${position.latitude}, Lng: ${position.longitude}");
      _currentPosition = position;
      _locationMessage = "Ubicación obtenida: Lat: ${position.latitude}, Lng: ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Obtener Ubicación')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_locationMessage),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _getCurrentLocation, child: Text('Actualizar Ubicación')),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.red,
  //     appBar: AppBar(title: Text(F.title)),
  //     body: Center(child: Text('Hello ${F.title}')),
  //   );
  // }
}
