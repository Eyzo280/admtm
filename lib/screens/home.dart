import 'package:admtm_app/widgets/home/appBar.dart';
import 'package:admtm_app/widgets/home/drawer.dart';
import 'package:admtm_app/widgets/home/one.dart';
import 'package:admtm_app/widgets/home/two.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Container(
              width: double.infinity,
              height: _deviceSize.height * 0.6,
              child: HomeOne(deviceSize: _deviceSize),
            ),
            Container(
              width: double.infinity,
              height: _deviceSize.height * 0.4,
              child: HomeTwo(deviceSize: _deviceSize),
            ),
          ],
        ),
      ),
    );
  }
}
