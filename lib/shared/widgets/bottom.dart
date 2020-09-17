import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreensBottom extends StatelessWidget {
  final Size deviceSize;

  ScreensBottom({this.deviceSize});

  Color _content_color = Color.fromRGBO(255, 255, 255, 0.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Theme(
        data: ThemeData(
          iconTheme: IconThemeData(
            color: _content_color,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.facebookF),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.youtube),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.envelope),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.phoneAlt),
                SizedBox(
                  width: deviceSize.width * 0.05,
                ),
                Text(
                  '(+351) 966373544',
                  style: TextStyle(color: _content_color),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
