import 'package:admtm_app/widgets/home/drawer.dart';
import 'package:flutter/material.dart';

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
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              title: Text('ADMTM'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("images/admtm001.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          "images/admtm001.jpg",
                          fit: BoxFit.cover,
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                "images/background_dragons.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Associação Desportiva de Muay Thai ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    "Da Madeira ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: _deviceSize.height * 0.01,
                                  ),
                                  Text(
                                    "The Unforgettable Muay Thai experience",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}
