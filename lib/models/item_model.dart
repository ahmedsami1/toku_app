import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final String? image;
  final String jbName;
  final String enName;
  final String sound;

  const ItemModel({
    required this.sound,
    this.image,
    required this.jbName,
    required this.enName,
  });

  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}