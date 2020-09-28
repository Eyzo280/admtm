import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class News extends StatelessWidget {
  static const routeName = '/News';

  Widget spotLight({
    BuildContext context,
    String image,
    String title,
    String content,
    String button,
  }) {
    return Container(
      color: Color.fromRGBO(29, 36, 42, 0.95),
      child: Column(
        children: [
          Image.asset('images/news/$image'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Colors.white,
                  ),
            ).tr(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.white,
                  ),
            ).tr(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Card(
            color: Colors.transparent,
            elevation: 15,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                button,
                style: Theme.of(context).textTheme.bodyText1,
              ).tr(),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'news_appbar_value1',
              appBarValue2: 'news_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'news_content_title',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Color.fromRGBO(234, 115, 115, 1),
                        ),
                  ).tr(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0125,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Divider(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0125,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'news_content_value1',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Color.fromRGBO(234, 115, 115, 1),
                        ),
                  ).tr(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                spotLight(
                  context: context,
                  image: 'fbpage.jpg',
                  title: 'news_content_facebook_title',
                  content: 'news_content_facebook_title_content',
                  button: 'news_content_facebook_title_button',
                ),
                spotLight(
                  context: context,
                  image: 'ytpage.jpg',
                  title: 'news_content_youtube_title',
                  content: 'news_content_youtube_title_content',
                  button: 'news_content_youtube_title_button',
                ),
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
      ),
    );
  }
}
