import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerController extends GetxController {
  late YoutubePlayerController _controller;

  void initPlayer() {
    _controller = YoutubePlayerController();
  }
}