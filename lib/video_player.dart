import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayback extends StatefulWidget {
  const VideoPlayback({Key? key}) : super(key: key);

  @override
  _VideoPlaybackState createState() => _VideoPlaybackState();
}

class _VideoPlaybackState extends State<VideoPlayback> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://cdn.shopify.com/s/files/1/0667/0133/files/Womens_Amplify_Seamless-Oct_2021.mp4?v=1633739890')
      ..initialize().then((_) {
        _controller.addListener(() {
          setState(() {});
        });
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
