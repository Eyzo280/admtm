import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeSponsors extends StatelessWidget {
  final String value1;
  final String value2;
  final String value3;
  final String value4;
  final Size deviceSize;

  HomeSponsors(
      {this.value1, this.value2, this.value3, this.value4, this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Color.fromRGBO(234, 115, 115, 1),
                  fontSize: 20,
                ),
          ).tr(),
          Text(
            value2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Color.fromRGBO(255, 81, 81, 1),
                  fontSize: 18,
                ),
          ).tr(),
          SizedBox(
            height: deviceSize.height * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value3,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Color.fromRGBO(255, 81, 81, 1),
                    ),
              ).tr(),
              Text(
                value4,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Color.fromRGBO(234, 115, 115, 1),
                      fontWeight: FontWeight.bold,
                    ),
              ).tr(),
            ],
          )
        ],
      ),
    );
  }
}
