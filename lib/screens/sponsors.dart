import 'package:admtm_app/shared/widgets/appBar.dart';
import 'package:admtm_app/shared/widgets/bottom.dart';
import 'package:admtm_app/shared/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Sponsors extends StatelessWidget {
  static const routeName = '/Sponsors';

  final List<String> _imagesSponsors = [
    'aquimadeira.jpg',
    'class_house.jpg',
    'logo_4litro.png',
    'logo_ad_automoveis.jpg',
    'logo_alberto_oculista.jpg',
    'logo_atms.png',
    'logo_auto_piornais.png',
    'logo_beach_bar.jpg',
    'logo_bordados_pontg.png',
    'logo_carbonara.jpg',
    'logo_cidade_velha.png',
    'logo_cme.png',
    'logo_dubai.png',
    'logo_eoccu.jpg',
    'logo_green_devis_safari.png',
    'logo_hotel_eira_do_serrado_ans_spa.png',
    'logo_luminoso_rainha.jpg',
    'logo_mimos.jpg',
    'logo_miro_freitas.jpg',
    'logo_muscle_power.png',
    'logo_nico_burger.jpg',
    'logo_ocean_gardens_hotel.png',
    'logo_old_town_bar.jpg',
    'logo_pdf-convert.png',
    'logo_podio_classico.jpg',
    'logo_prova_la_pasta.jpg',
    'logo_rui_bombas.jpg',
    'logo_snack_bar.jpg',
    'logo_super_lobos.jpg',
    'logo_tipografia_natividade.jpg',
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
              appBarValue1: 'sponsors_appbar_value1',
              appBarValue2: 'sponsors_appbar_value2',
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
                  child: Column(
                    children: _imagesSponsors
                        .map((String image) =>
                            Image.asset('images/sponsors/$image'))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
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
