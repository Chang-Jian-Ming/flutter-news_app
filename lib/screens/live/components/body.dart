import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

const videoSrc = 'https://www.youtube.com/watch?v=IB2-BB3dHvY';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  static String videoId = YoutubePlayer.convertUrlToId(videoSrc);

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context, player) {
        return Column(
          children: [
            player,
            //some other widgets
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Channel 9 - News Live Tonight",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),    
              ),
            ),
          ],
        );
      }
    );
  }
}
