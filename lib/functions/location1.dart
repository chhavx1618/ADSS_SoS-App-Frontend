import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class GetLocationPage extends StatefulWidget {
  @override
  _GetLocationPageState createState() => _GetLocationPageState();
}

class _GetLocationPageState extends State<GetLocationPage> {
  Position _currentPosition = Position(
    longitude: -122.4168, // Example longitude for San Francisco
    latitude: 37.7749, // Example latitude for San Francisco
    timestamp: DateTime.now(), // Current timestamp
    accuracy: 10.0, // Dummy accuracy in meters
    altitude: 100.0, // Dummy altitude in meters
    heading: 0.0, // Dummy heading in degrees
    speed: 0.0, // Dummy speed in meters per second
    speedAccuracy: 0.0, altitudeAccuracy: 0.0, headingAccuracy: 0.0,
     // Dummy speed accuracy in meters per second
  );
  String _currentAddress = "";
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  _getCurrentLocation() async {
    Geolocator.checkPermission().then((permission) async {
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          _showAlertDialog("Location Permission Denied",
              "Please enable location services for this app.");
        }
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        try {
          _currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high,
          );
          if (_currentPosition != null) {
            _getAddressFromLatLng();
          }
        } catch (e) {
          _showAlertDialog("Error", "Failed to get current location: $e");
        }
      }
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        _currentPosition.latitude,
        _currentPosition.longitude,
      );

      Placemark place = placemarks[0];
      _currentAddress = "${place.locality}, ${place.country}";
      setState(() {});
    } catch (e) {
      _showAlertDialog("Error", "Failed to get address: $e");
    }
  }

  _showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _currentPosition != null
                ? Text(
                    "Latitude: ${_currentPosition.latitude}, Longitude: ${_currentPosition.longitude}",
                  )
                : Text("Location not found"),
            SizedBox(height: 10),
            _currentAddress != null ? Text(_currentAddress) : Text(""),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                // If listening is active show the recognized words
                _speechToText.isListening
                    ? '$_lastWords'
                    // If listening isn't active but could be tell the user
                    // how to start it, otherwise indicate that speech
                    // recognition is not yet ready or not supported on
                    // the target device
                    : _speechEnabled
                        ? 'Tap the microphone to start listening...'
                        : 'Speech not available',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            // If not yet listening for speech start, otherwise stop
            _speechToText.isNotListening ? _startListening : _stopListening,
        tooltip: 'Listen',
        child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
      ),
    );
  }
}
