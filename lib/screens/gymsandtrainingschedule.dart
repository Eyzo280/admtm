import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/content.dart';
import 'package:admtm_app/widgets/gymsandtrainingschedule/menu.dart';
import 'package:flutter/material.dart';

enum Content { one, two, three }

class GymsAndTrainingSchedule extends StatefulWidget {
  static const routeName = '/GymsAndTrainingSchedule';

  @override
  _GymsAndTrainingScheduleState createState() =>
      _GymsAndTrainingScheduleState();
}

class _GymsAndTrainingScheduleState extends State<GymsAndTrainingSchedule> {
  Content _selectedContent = Content.one;

  // Content animation settings
  Content _viewContent = Content.one;

  bool _visible = true;

  int _timeAnimationContent = 500;
  //

  void changeView({Content contnet}) {
    setState(() {
      _selectedContent = contnet;
    });
    if (_viewContent != _selectedContent) {
      // When user selected another content then is animation
      _visible = false;
      Future.delayed(Duration(milliseconds: _timeAnimationContent))
          .whenComplete(() {
        setState(() {
          _viewContent = _selectedContent;
          _visible = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'gymsandtrainingschedule_appbar_value1',
              appBarValue2: 'gymsandtrainingschedule_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                GymsAndTrainingMenu(
                  selectedContent: _selectedContent,
                  changeView: changeView,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Divider(),
                ),
                AnimatedOpacity(
                  duration: Duration(milliseconds: _timeAnimationContent),
                  opacity: _visible ? 1 : 0,
                  curve: Curves.easeIn,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GymsAndTrainingContent(
                      selectedContent: _viewContent,
                      deviceSize: _deviceSize,
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).canvasColor,
                  child: ScreensBottom(
                    deviceSize: _deviceSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
