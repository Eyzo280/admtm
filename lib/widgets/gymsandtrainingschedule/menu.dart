import 'package:admtm_app/screens/gymsandtrainingschedule.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class GymsAndTrainingMenu extends StatefulWidget {
  final Content selectedContent;
  final Function changeView;

  GymsAndTrainingMenu({
    this.selectedContent,
    this.changeView,
  });

  @override
  _GymsAndTrainingMenuState createState() => _GymsAndTrainingMenuState();
}

class _GymsAndTrainingMenuState extends State<GymsAndTrainingMenu> {
  Widget _menuValue({
    @required BuildContext ctx,
    @required String value,
    @required Content contnet,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      child: FlatButton(
        onPressed: () => widget.changeView(contnet: contnet),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyText1,
        ).tr(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Settings menu
    double _position;

    switch (widget.selectedContent) {
      case Content.one:
        {
          _position = 0;
        }
        break;
      case Content.two:
        {
          _position = MediaQuery.of(context).size.height * 0.1;
        }
        break;
      case Content.three:
        {
          _position = MediaQuery.of(context).size.height * 0.2;
        }
        break;
    }

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Container(
        color: const Color.fromRGBO(46, 56, 66, 1),
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Stack(
          fit: StackFit.loose,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: _position,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.75,
                color: const Color.fromRGBO(167, 21, 21, 0.81),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _menuValue(
                  ctx: context,
                  value: 'gymsandtrainingschedule_menu_one',
                  contnet: Content.one,
                ),
                _menuValue(
                  ctx: context,
                  value: 'gymsandtrainingschedule_menu_two',
                  contnet: Content.two,
                ),
                _menuValue(
                  ctx: context,
                  value: 'gymsandtrainingschedule_menu_three',
                  contnet: Content.three,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
