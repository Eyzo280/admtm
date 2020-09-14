import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeInfoTitleWidgets extends StatelessWidget {
  final String title;
  final String content;
  final Size deviceSize;

  HomeInfoTitleWidgets({
    @required this.title,
    @required this.content,
    @required this.deviceSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Divider(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Color.fromRGBO(255, 190, 190, 1),
                  fontSize: 20,
                ),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.1,
          ),
        ],
      ),
    );
  }
}
