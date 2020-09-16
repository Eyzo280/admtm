import 'package:admtm_app/shared/screens/drawer.dart';
import 'package:admtm_app/widgets/home/appBar.dart';
import 'package:flutter/material.dart';

class AboutUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: HomeDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            HomeAppBar(
              deviceSize: _deviceSize,
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
