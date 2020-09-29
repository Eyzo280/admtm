import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Shop extends StatelessWidget {
  static const routeName = '/Shop';

  final List<String> _imagesShop = [
    'shop-ankle-guards01.jpg',
    'shop-blouse01.jpg',
    'shop-cup01.jpg',
    'shop-gloves01.jpg',
    'shop-groin-guard01.jpg',
    'shop-guards01.jpg',
    'shop-hand-wraps01.jpg',
    'shop-hoodie01.jpg',
    'shop-hoodie02.jpg',
    'shop-jumping-rope01.jpg',
    'shop-knee-guards01.jpg',
    'shop-mouth-guard01.jpg',
    'shop-mt-cream01.jpg',
    'shop-mt01.jpg',
    'shop-mt02.jpg',
    'shop-punching-bag01.jpg',
    'shop-punching-bag02.jpg',
    'shop-shin-guards01.jpg',
    'shop-shorts01.jpg',
    'shop-sweatpants01.jpg',
    'shop-sweatpants02.jpg',
    'shop-t-shirt01.jpg',
    'shop-t-shirt02.jpg',
  ];

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
              appBarValue1: 'shop_appbar_value1',
              appBarValue2: 'shop_appbar_value2',
              deviceSize: _deviceSize,
            )
          ];
        },
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'shop_content_title',
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
                  child: Column(
                    children: _imagesShop
                        .map(
                            (String image) => Image.asset('images/shop/$image'))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
