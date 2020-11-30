import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeFindFacebook extends StatelessWidget {
  final Size deviceSize;

  const HomeFindFacebook({this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('images/admtm001.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Home_findfacebook_value1',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Text(
            'Home_findfacebook_value2',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 18,
                ),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Text(
              'Home_findfacebook_value3',
              style: Theme.of(context).textTheme.bodyText1,
            ).tr(),
          ),
        ],
      ),
    );
  }
}
