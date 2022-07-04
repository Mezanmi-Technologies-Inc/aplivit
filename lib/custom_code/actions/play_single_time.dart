// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';

// Begin custom action code
Future playSingleTime(
  String sound,
  int counter,
) async {
  // Add your function code here!
  if (counter == 0) {
    playSoundFromURL(sound);
  }
}
