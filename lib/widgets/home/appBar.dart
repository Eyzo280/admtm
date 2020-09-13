import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeAppBar extends StatelessWidget {
  final Size deviceSize;

  HomeAppBar({@required this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      title: Text('ADMTM'),
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
                Stack(
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
                            height: deviceSize.height * 0.01,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
