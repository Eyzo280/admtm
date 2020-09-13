import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  final Size deviceSize;

  HomeTwo({@required this.deviceSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text('data'),
      ),
    );
  }
}
