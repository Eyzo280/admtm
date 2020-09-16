import 'package:admtm_app/widgets/home/InfotitleWidgets.dart';
import 'package:admtm_app/widgets/home/appBar.dart';
import 'package:admtm_app/widgets/home/bottom.dart';
import 'package:admtm_app/shared/screens/drawer.dart';
import 'package:admtm_app/widgets/home/findfacebook.dart';
import 'package:admtm_app/widgets/home/info.dart';
import 'package:admtm_app/widgets/home/one.dart';
import 'package:admtm_app/widgets/home/content.dart';
import 'package:admtm_app/widgets/home/partners.dart';
import 'package:admtm_app/widgets/home/sponsors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: HomeDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            HomeAppBar(
              deviceSize: _deviceSize,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: HomeOne(deviceSize: _deviceSize),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeContent(
                  titleTranslate: 'HomeTwo_title',
                  contentTranslate: 'HomeTwo_content',
                  buttonTranslate: 'HomeTwo_button',
                  imageAsset: 'images/aboutus_xlaozc3la0.jpg',
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeContent(
                  titleTranslate: 'HomeThree_title',
                  contentTranslate: 'HomeThree_content',
                  buttonTranslate: 'HomeThree_button',
                  imageAsset: 'images/admtm_xk35euui0a.jpg',
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeContent(
                  titleTranslate: 'HomeFour_title',
                  contentTranslate: 'HomeFour_content',
                  buttonTranslate: 'HomeFour_button',
                  imageAsset: 'images/admtm_x234dizoop.jpg',
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeContent(
                  titleTranslate: 'HomeFive_title',
                  contentTranslate: 'HomeFive_content',
                  buttonTranslate: 'HomeFive_button',
                  imageAsset: 'images/admtm_team02v2.jpg',
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  color: Color.fromRGBO(173, 49, 52, 1),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      HomeInfoTitleWidgets(
                        title: 'HomeInfo_title',
                        content: 'HomeInfo_content',
                        deviceSize: _deviceSize,
                      ),
                      Container(
                        child: HomeInfo(
                          title: 'HomeInfo_One_title',
                          content: 'HomeInfo_One_content',
                          icon: FontAwesomeIcons.solidCalendarAlt,
                          deviceSize: _deviceSize,
                        ),
                      ),
                      Container(
                        child: HomeInfo(
                          title: 'HomeInfo_Two_title',
                          content: 'HomeInfo_Two_content',
                          icon: FontAwesomeIcons.newspaper,
                          deviceSize: _deviceSize,
                        ),
                      ),
                      Container(
                        child: HomeInfo(
                          title: 'HomeInfo_Three_title',
                          content: 'HomeInfo_Three_content',
                          icon: FontAwesomeIcons.shoppingCart,
                          deviceSize: _deviceSize,
                        ),
                      ),
                      Container(
                        child: HomeInfo(
                          title: 'HomeInfo_Four_title',
                          content: 'HomeInfo_Four_content_value1',
                          icon: FontAwesomeIcons.envelope,
                          deviceSize: _deviceSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeSponsors(
                  value1: 'Home_sponsors_value1',
                  value2: 'Home_sponsors_value2',
                  value3: 'Home_sponsors_value3',
                  value4: 'Home_sponsors_value4',
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeFindFacebook(
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomePartners(
                  deviceSize: _deviceSize,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: HomeBottom(
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
