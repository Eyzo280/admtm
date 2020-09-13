import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeOne extends StatelessWidget {
  final Size deviceSize;

  HomeOne({@required this.deviceSize});

  static const Color _textColor = Color.fromRGBO(255, 160, 160, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/logo_admtm2.jpg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HomeOne_value1',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: _textColor,
                      ),
                ).tr(),
                Text(
                  'HomeOne_value2',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: _textColor,
                      ),
                ).tr(),
                SizedBox(
                  height: deviceSize.height * 0.05,
                ),
                Text(
                  'HomeOne_value3',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 15,
                        color: _textColor,
                      ),
                ).tr(),
                SizedBox(
                  height: deviceSize.height * 0.025,
                ),
                Image.asset('images/fpkmt_logo_small.png'),
                SizedBox(
                  height: deviceSize.height * 0.025,
                ),
                Text(
                  'HomeOne_value4',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 15,
                        color: _textColor,
                      ),
                ).tr(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
