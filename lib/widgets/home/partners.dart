import 'package:flutter/material.dart';

class HomePartners extends StatelessWidget {
  final Size deviceSize;

  HomePartners({this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: deviceSize.width * 0.1,
            child: Image.asset(
              'images/cm-funchal.png',
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          Container(
            width: deviceSize.width * 0.1,
            child: Image.asset(
              'images/cm-cdlobos.png',
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          Container(
            width: deviceSize.width * 0.1,
            child: Image.asset(
              'images/logo_adcmad.png',
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          Container(
            width: deviceSize.width * 0.1,
            child: Image.asset(
              'images/logo_ipdj.png',
            ),
          ),
          SizedBox(
            width: deviceSize.width * 0.05,
          ),
          Container(
            width: deviceSize.width * 0.1,
            child: Image.asset(
              'images/logo_sre.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
