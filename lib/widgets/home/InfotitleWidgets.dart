import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeInfoTitleWidgets extends StatelessWidget {
  final String title;
  final String content;
  final Size deviceSize;

  const HomeInfoTitleWidgets({
    @required this.title,
    @required this.content,
    @required this.deviceSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
        ).tr(),
        SizedBox(
          height: deviceSize.height * 0.05,
        ),
        const Divider(),
        SizedBox(
          height: deviceSize.height * 0.05,
        ),
        Text(
          content,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: const Color.fromRGBO(255, 190, 190, 1),
                fontSize: 15,
              ),
        ).tr(),
        SizedBox(
          height: deviceSize.height * 0.1,
        ),
      ],
    );
  }
}
