import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeDrawer extends StatelessWidget {
  final Size deviceSize;

  HomeDrawer({@required this.deviceSize});

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
                height: deviceSize.height * 0.05,
              ),
              ListTile(
                title: Text('menu_value1').tr(),
                onTap: () {
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
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
                  // Update the state of the app.
                  // ...
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  height: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/logo_admtm_white.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
