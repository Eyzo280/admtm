import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ScreensAppBar extends StatefulWidget {
  final String appBarValue1;
  final Size deviceSize;

  ScreensAppBar({
    @required this.appBarValue1,
    @required this.deviceSize,
  });

  @override
  _ScreensAppBarState createState() => _ScreensAppBarState();
}

class _ScreensAppBarState extends State<ScreensAppBar>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  bool _animations = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween(begin: 100.0, end: 150.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animationController.forward();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    Future.delayed(Duration.zero).whenComplete(() {
      setState(() {
        _animations = !_animations;
      });
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: _animation.value,
      floating: false,
      pinned: true,
      title: AnimatedOpacity(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeIn,
        opacity: _animations ? 0 : 1,
        child: Text('ADMTM'),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("images/admtm001.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "images/admtm001.jpg",
                  fit: BoxFit.cover,
                ),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.easeIn,
                  opacity: _animations ? 0 : 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.appBarValue1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ).tr(),
                      SizedBox(
                        height: _animation.value / 3,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
