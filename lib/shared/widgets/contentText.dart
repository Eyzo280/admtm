import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ContentText extends StatelessWidget {
  final String value;

  ContentText({@required this.value});

  Color _content_color = Color.fromRGBO(0, 0, 0, 0.65);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          value,
          textAlign: TextAlign.justify,
          style: TextStyle(color: _content_color),
        ).tr()
      ],
    );
  }
}
