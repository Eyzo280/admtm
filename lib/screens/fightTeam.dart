import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/contentText.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FightTeam extends StatelessWidget {
  static const routeName = '/FightTeam';

  @override
  Widget build(BuildContext context) {
    final Size _deviceSize = MediaQuery.of(context).size;

    Widget _fighter({BuildContext context, String image, int numberFighter}) {
      return Column(
        children: [
          SizedBox(
            height: _deviceSize.height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(image),
          ),
          Text(
            'fightteam_content_fighter${numberFighter}_name',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Color.fromRGBO(234, 115, 115, 1),
                ),
          ).tr(),
          SizedBox(
            height: _deviceSize.height * 0.0125,
          ),
          Container(
            width: _deviceSize.width * 0.75,
            child: Text(
              'fightteam_content_fighter${numberFighter}_description',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Color.fromRGBO(234, 115, 115, 1),
                    fontSize: 15,
                  ),
            ).tr(),
          )
        ],
      );
    }

    return Scaffold(
      drawer: ScreensDrawer(
        deviceSize: _deviceSize,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ScreensAppBar(
              appBarValue1: 'fightteam_appbar_value1',
              appBarValue2: 'fightteam_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Color.fromRGBO(46, 56, 66, 1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                      Container(
                        width: _deviceSize.width * 0.75,
                        child: Text(
                          'fightteam_content_value1',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ).tr(),
                      ),
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                      Image.asset('images/fightteam/admtm_team01.jpg'),
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                      Container(
                        width: _deviceSize.width * 0.75,
                        child: Text(
                          'fightteam_content_value2',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ).tr(),
                      ),
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: _deviceSize.height * 0.025,
                    ),
                    Container(
                      width: _deviceSize.width * 0.75,
                      child: Text(
                        'fightteam_content_value3',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Color.fromRGBO(234, 115, 115, 1),
                            ),
                      ).tr(),
                    ),
                  ],
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/jose_abreu.jpg',
                  numberFighter: 1,
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/marisol_freitas.jpg',
                  numberFighter: 2,
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/henrique_ponte.jpg',
                  numberFighter: 3,
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/antonio_faria.jpg',
                  numberFighter: 4,
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/fabio_pinto.jpg',
                  numberFighter: 5,
                ),
                _fighter(
                  context: context,
                  image: 'images/fightteam/marco_jardim.jpg',
                  numberFighter: 6,
                ),
                SizedBox(
                  height: _deviceSize.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/fightteam/admtm_trainers.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    top: 0,
                    left: 16,
                    bottom: 16,
                  ),
                  child: Container(
                    height: _deviceSize.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/fightteam/admtm_ft_x323aa.jpg'),
                        Image.asset('images/fightteam/admtm_cert.jpg'),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Color.fromRGBO(46, 56, 66, 1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                      Text(
                        'fightteam_content_value4',
                        style: Theme.of(context).textTheme.bodyText1,
                      ).tr(),
                      SizedBox(
                        height: _deviceSize.height * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset('images/fightteam/admtm_team02v2.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'images/fightteam/admtm_ft_xekmaicpo3.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'images/fightteam/admtm_ft_x3la9claam.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'images/fightteam/admtm_ft_x43laizzoa.jpg'),
                      ),
                    ],
                  ),
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
