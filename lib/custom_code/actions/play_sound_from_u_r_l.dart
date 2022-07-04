// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:just_audio/just_audio.dart';

Future playSoundFromURL(String soundURL) async {
  final AudioPlayer player = AudioPlayer();

  if (soundURL != null && soundURL != "") {
    await player.setUrl(soundURL);
    player.play();
  }
}
