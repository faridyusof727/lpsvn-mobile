import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:lpsvn_general/configs/theme.dart';

class ScreenAudioPlayer extends StatefulWidget {
  const ScreenAudioPlayer({Key? key}) : super(key: key);

  @override
  State<ScreenAudioPlayer> createState() => _ScreenAudioPlayerState();
}

class _ScreenAudioPlayerState extends State<ScreenAudioPlayer> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool isSeeking = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  final url =
      "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3";

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    audioPlayer.onSeekComplete.listen((status) {
      setState(() {
        isSeeking = false;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColorMajor,
        title: const Text(
          "Sample Audio",
          style: TextStyle(
            color: defaultColorContra,
            fontSize: textSizeTitle,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(sectionSpacingNormal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              color: defaultColorThird,
              child: const Center(
                child: Text(
                  'Sample Audio',
                  style: TextStyle(color: defaultColorContra),
                ),
              ),
            ),
            const SizedBox(
              height: sectionSpacingBig,
            ),
            Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {
                  final position = Duration(seconds: value.toInt());
                  setState(() {
                    isSeeking = true;
                  });
                  await audioPlayer.seek(position);
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatTime(position),
                  style: const TextStyle(
                    color: defaultColorContra,
                    fontSize: textSizeSmall,
                  ),
                ),
                Text(
                  formatTime(duration),
                  style: const TextStyle(
                    color: defaultColorContra,
                    fontSize: textSizeSmall,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: sectionSpacingBig,
            ),
            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: isSeeking
                    ? const CupertinoActivityIndicator()
                    : Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                  } else {
                    await audioPlayer.play(UrlSource(url));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }
}
