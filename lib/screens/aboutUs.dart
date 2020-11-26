import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/contentText.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AboutUS extends StatelessWidget {
  static const routeName = '/AboutUS';

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'aboutUS_appbar_value1',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Image.asset('images/admtm_logo.jpg'),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'aboutUS_content_value1',
                      style: Theme.of(context).textTheme.headline1,
                    ).tr(),
                    ContentText(
                      value: 'aboutUS_content_value2',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value3',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset('images/logo_federation.jpg'),
                    ContentText(
                      value: 'aboutUS_content_value4',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ContentText(
                        value: 'aboutUS_content_value5',
                      ),
                    ),
                    ContentText(
                      value: 'aboutUS_content_value6',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value7',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value8',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value9',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value10',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value11',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value12',
                    ),
                    Image.asset('images/escola01.jpg'),
                    Text(
                      'aboutUS_content_value13',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 15),
                    ).tr(),
                    Image.asset('images/escola02.jpg'),
                    Text(
                      'aboutUS_content_value14',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 15),
                    ).tr(),
                    ContentText(
                      value: 'aboutUS_content_value15',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value16',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/dft_logo_small.png'),
                    ),
                    ContentText(
                      value: 'aboutUS_content_value17',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value18',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value19',
                    ),
                    ContentText(
                      value: 'aboutUS_content_value20',
                    ),
                  ],
                ),
              ),
              ScreensBottom(
                deviceSize: _deviceSize,
              )
            ],
          ),
        ),
      ),
    );
  }
}
