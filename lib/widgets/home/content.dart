import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeContent extends StatelessWidget {
  final String titleTranslate;
  final String contentTranslate;
  final String buttonTranslate;
  final String imageAsset;
  final Size deviceSize;

  HomeContent({
    @required this.titleTranslate,
    @required this.contentTranslate,
    @required this.buttonTranslate,
    @required this.imageAsset,
    @required this.deviceSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageAsset),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            titleTranslate,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
          ).tr(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              contentTranslate,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    fontSize: 15,
                  ),
            ).tr(),
          ),
          Card(
            color: Colors.transparent,
            elevation: 15,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                buttonTranslate,
                style: Theme.of(context).textTheme.bodyText2,
              ).tr(),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.025,
          )
        ],
      ),
    );
  }
}
