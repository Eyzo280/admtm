import 'package:admtm_app/screens/aboutUs.dart';
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

  const ScreensDrawer({@required this.deviceSize});

  void changeLocalization({
    @required BuildContext ctx,
    @required Localization localization,
  }) {
    if (localization == Localization.english) {
      ctx.locale = const Locale('en', 'US');
    } else {
      ctx.locale = const Locale('pt', 'PT');
    }
  }

  Widget _field({
    @required BuildContext ctx,
    @required String title,
    @required String navigatorNamed,
  }) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title.tr().toUpperCase(),
          ),
          onTap: () {
            Navigator.of(ctx).pushReplacementNamed(navigatorNamed);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(
            height: 0,
          ),
        ),
      ],
    );
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
          color: const Color.fromRGBO(167, 21, 21, 0.81),
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
              _field(
                ctx: context,
                title: 'menu_value1',
                navigatorNamed: '/',
              ),
              _field(
                ctx: context,
                title: 'menu_value2',
                navigatorNamed: AboutUS.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value3',
                navigatorNamed: Classes.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value4',
                navigatorNamed: Whatismt.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value5',
                navigatorNamed: FightTeam.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value6',
                navigatorNamed: GymsAndTrainingSchedule.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value7',
                navigatorNamed: News.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value8',
                navigatorNamed: Shop.routeName,
              ),
              _field(
                ctx: context,
                title: 'menu_value9',
                navigatorNamed: Sponsors.routeName,
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
