import 'package:flutter/material.dart';
import 'package:project2/button.dart';
import 'package:audioplayers/audioplayers.dart';



class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color colorAppbar = Colors.lightBlue[200];
  Color colorBackground = Colors.black;
  AudioCache _audioCache;
  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(
      prefix: 'assets/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: colorBackground,
        appBar: AppBar(
          backgroundColor: colorAppbar,
          title: Text('Cat Tiles'),
          centerTitle: true,
        ),

        body: 
        Padding(
          padding: EdgeInsets.only(top: 15.0, right: 40.0),
          child: Column(
            
            children: [
              InkWell(
                onTap: () {
                  _audioCache.play('0.mp3');
                  setState(() {
                    colorAppbar = Colors.redAccent[100];
                    colorBackground = Colors.redAccent[100];

                  });
                },
                child: Button(bgColor: Colors.white, ),
              ),
              InkWell(
                onTap: () {
                  _audioCache.play('1.mp3');
                  setState(() {
                    colorAppbar = Colors.pink[200];
                    colorBackground = Colors.pink[200];
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('2.mp3');
                    colorAppbar = Colors.purple[200];
                    colorBackground = Colors.purple[200];
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  _audioCache.play('3.mp3');
                  setState(() {
                    colorAppbar = Colors.yellow[100];
                    colorBackground = Colors.yellow[100];
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('4.mp3');
                    colorAppbar = Colors.tealAccent;
                    colorBackground = Colors.tealAccent;
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('5.mp3');
                    colorAppbar = Colors.pink[200];
                     colorBackground = Colors.pink[200];
                    
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('6.mp3');
                    colorAppbar = Colors.indigo[200];
                    colorBackground = Colors.indigo[200];
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  _audioCache.play('7.mp3');
                  setState(() {
                    colorAppbar = Colors.grey;
                    colorBackground = Colors.grey;
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('8.mp3');
                    colorAppbar = Colors.lightBlueAccent[100];
                    colorBackground = Colors.lightBlueAccent[100];
                  });
                },
                child: Button(bgColor: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _audioCache.play('9.mp3');
                    colorAppbar = Colors.lightGreenAccent[100];
                    colorBackground = Colors.lightGreenAccent[100];
                  });
                },
                child: Button(bgColor: Colors.white, number: '9'),
              ),
            ],
          ),
        ));
  }
}
