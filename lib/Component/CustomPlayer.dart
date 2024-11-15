import 'package:flutter/cupertino.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Customplayer extends StatefulWidget {


    String videoId;
    Customplayer({super.key, required this.videoId});

  @override
  State<Customplayer> createState() => _CustomplayerState();
}

class _CustomplayerState extends State<Customplayer> {

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;

  bool _isPlayerReady = false;

  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = YoutubePlayerController(

      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(

        autoPlay: true,
        mute: false,
      ),
    );
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor:  Color(0xffEFC6F5),
      progressColors: const ProgressBarColors(
        playedColor:  Color(0xffEFC6F5),
        handleColor: Color(0xffEFC6F5),
      ),
      onReady: () {
        _controller.addListener(listener);
      },
    );
  }
}
