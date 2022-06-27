import 'package:flutter/material.dart';
import 'package:lpsvn_general/configs/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenYoutubePlayer extends StatefulWidget {
  const ScreenYoutubePlayer({Key? key}) : super(key: key);

  @override
  State<ScreenYoutubePlayer> createState() => _ScreenYoutubePlayerState();
}

class _ScreenYoutubePlayerState extends State<ScreenYoutubePlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=FicdWhMgadQ';
    //'https://www.youtube.com/watch?v=YE7VzlLtp-4';

    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
        disableDragSeek: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(
              isExpanded: true,
            ),
            RemainingDuration(),
            FullScreenButton()
          ],
        ),
        builder: (context, player) => Column(
          children: [
            AppBar(
              backgroundColor: defaultColorMajor,
              title: const Text(
                "Testing",
                style: TextStyle(
                    color: defaultColorContra, fontSize: textSizeTitle),
              ),
            ),
            player
          ],
        ),
      ),
    ));
  }
}
