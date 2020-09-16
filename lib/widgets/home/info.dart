import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeInfo extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final Size deviceSize;

  HomeInfo({
    @required this.title,
    @required this.content,
    @required this.icon,
    @required this.deviceSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: Theme.of(context).textTheme.bodyText2.color,
        ),
        SizedBox(
          height: deviceSize.height * 0.05,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
        ).tr(),
        SizedBox(
          height: deviceSize.height * 0.05,
        ),
        Text(
          content,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 20,
              ),
        ).tr(),
        SizedBox(
          height: deviceSize.height * 0.025,
        ),
        title == 'HomeInfo_Four_title'
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        color: Theme.of(context).textTheme.bodyText2.color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'HomeInfo_Four_content_value2',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 20,
                            ),
                      ).tr(),
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Theme.of(context).textTheme.bodyText2.color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'HomeInfo_Four_content_value3',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontSize: 20,
                            ),
                      ).tr(),
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: Theme.of(context).textTheme.bodyText2.color,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'HomeInfo_Four_content_value4',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: 20,
                              ),
                        ).tr(),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  Divider(),
                  SizedBox(
                    height: deviceSize.height * 0.025,
                  )
                ],
              )
      ],
    );
  }
}
