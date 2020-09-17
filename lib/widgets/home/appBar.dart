import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeAppBar extends StatefulWidget {
  final Size deviceSize;

  HomeAppBar({@required this.deviceSize});

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar>
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

    _animation = Tween(begin: 150.0, end: 200.0).animate(_animationController)
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
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          "images/background_dragons.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "appbar_value1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ).tr(),
                            Text(
                              "appbar_value2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ).tr(),
                            SizedBox(
                              height: widget.deviceSize.height * 0.01,
                            ),
                            Text(
                              "appbar_value3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ).tr(),
                          ],
                        ),
                      ),
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
