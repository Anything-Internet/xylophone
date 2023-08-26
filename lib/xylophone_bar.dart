import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneBar extends StatefulWidget {
  const XylophoneBar({
    Key? key,
    required this.note,
    required this.sound,
    required this.color,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String note;
  final String sound;
  final Color color;
  final double width;
  final double height;

  @override
  State<StatefulWidget> createState() {
    return _XylophoneBarState();
  }
}
final AudioPlayer player = AudioPlayer();

class _XylophoneBarState extends State<XylophoneBar> {
  bool isPlaying = false;
  bool isLoaded = false;

  loadAudioPlayer(String sound) async {
    String assetSource = "assets/audio/$sound";
    String path = "https://jerryhobby.com/xylophone/audio/$sound";
    //AudioLogger.logLevel = AudioLogLevel.info;
    //await player.setSourceAsset(assetSource);
    await player.setSourceUrl(path);
  }

  playAudio() async {
    print("playing ${widget.sound}");
    await loadAudioPlayer(widget.sound);
    await player.resume();
  }

  pauseAudio() async {
    //await player.pause();
    print("paused ${widget.sound}");
  }

  void tap(bool isDown) {

    // if(isLoaded == false) {
    //   isLoaded = true;
    //   loadAudioPlayer(widget.sound);
    // }

    if (isDown) {
      playAudio();
    } else {
      pauseAudio();
    }
    setState(() {
      isPlaying = isDown ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        tap(true);
      },
      onTapUp: (TapUpDetails details) {
        tap(false);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0.0, 0.3, 0.7, 1.0],
            colors: [
              Color.lerp(widget.color, Colors.black, 0.45)!,

              isPlaying
                  ? Color.lerp(widget.color, Colors.white60, 0.4)!
                  : Color.lerp(widget.color, Colors.black, 0.5)!,

              isPlaying
                  ? Color.lerp(widget.color, Colors.white60, 0.3)!
                  : Color.lerp(widget.color, Colors.black, 0.6)!,

              // isPlaying ? widget.downColor : widget.upColor,
              Color.lerp(widget.color, Colors.black, 0.75)!,
            ],
          ),
        ),
        width: widget.width,
        height: widget.height,
        alignment: Alignment.bottomCenter,
        child: Text(
            widget.note,
            style: TextStyle(
              fontSize: widget.width / 1.5,
              fontWeight: FontWeight.bold,
              color: isPlaying ? Colors.white : Colors.black,
            ),
        ),
      ),
    );
  }
}
