import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/contentText.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Whatismt extends StatelessWidget {
  static const routeName = '/Whatismt';

  Widget _content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/whatismt/whatismt01.jpg',
            ),
          ),
          Text(
            'whatismt_content_value1',
            style: Theme.of(context).textTheme.headline1,
          ).tr(), // Title
          ContentText(
            value: 'whatismt_content_value2',
          ),
          ContentText(
            value: 'whatismt_content_value3',
          ),
          ContentText(
            value: 'whatismt_content_value4',
          ),
          ContentText(
            value: 'whatismt_content_value5',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/whatismt/whatismt02.jpg',
            ),
          ),
          ContentText(
            value: 'whatismt_content_value6',
          ),
          ContentText(
            value: 'whatismt_content_value7',
          ),
          ContentText(
            value: 'whatismt_content_value8',
          ),
          ContentText(
            value: 'whatismt_content_value9',
          ),
          ContentText(
            value: 'whatismt_content_value10',
          ),
          ContentText(
            value: 'whatismt_content_value11',
          ),
          ContentText(
            value: 'whatismt_content_value12',
          ),
          ContentText(
            value: 'whatismt_content_value13',
          ),
          ContentText(
            value: 'whatismt_content_value14',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'whatismt_appbar_value1',
              appBarValue2: 'whatismt_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              _content(context),
              Container(
                color: Theme.of(context).canvasColor,
                child: ScreensBottom(
                  deviceSize: _deviceSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
