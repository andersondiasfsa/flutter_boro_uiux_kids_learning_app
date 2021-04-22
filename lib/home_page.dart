import 'package:flutter/material.dart';

import 'Shared/config/size_config.dart';
import 'components/app_bar_com_filtro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    var heigth = SizeConfig.getHeight(context);

    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Column(
          children: [
            AppBarComFiltro(),
            Container(
              child: Text(' '),
            )
          ],
        )),
      ),
    );
  }
}
