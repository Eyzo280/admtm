import 'package:admtm_app/screens/classes.dart';
import 'package:admtm_app/screens/fightTeam.dart';
import 'package:admtm_app/screens/gymsandtrainingschedule.dart';
import 'package:admtm_app/screens/news.dart';
import 'package:admtm_app/screens/shop.dart';
import 'package:admtm_app/screens/sponsors.dart';
import 'package:admtm_app/screens/whatismt.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

enum Localization { english, portugal }

class ScreensDrawer extends StatelessWidget {
  final Size deviceSize;

  ScreensDrawer({@required this.deviceSize});

  void changeLocalization({
    @required BuildContext ctx,
    @required Localization localization,
  }) {
    if (localization == Localization.english) {
      ctx.locale = Locale('en', 'US');
    } else {
      ctx.locale = Locale('pt', 'PT');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.transparent), // Invisible background
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          color: Color.fromRGBO(167, 21, 21, 0.81),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: deviceSize.height * 0.075,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => changeLocalization(
                        ctx: context, localization: Localization.portugal),
                    child: Container(
                      width: deviceSize.width * 0.1,
                      child: Image.asset(
                        'images/portugal-flag.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: deviceSize.width * 0.05,
                  ),
                  InkWell(
                    onTap: () => changeLocalization(
                        ctx: context, localization: Localization.english),
                    child: Container(
                      width: deviceSize.width * 0.1,
                      child: Image.asset(
                        'images/uk-flag.png',
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('menu_value1').tr(),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value2').tr(),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/AboutUS');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value3').tr(),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Classes.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value4').tr(),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Whatismt.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value5').tr(),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(FightTeam.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value6').tr(),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(GymsAndTrainingSchedule.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value7').tr(),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(News.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value8').tr(),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Shop.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              ListTile(
                title: Text('menu_value9').tr(),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Sponsors.routeName);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                height: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset(
                  'images/logo_admtm_white.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
