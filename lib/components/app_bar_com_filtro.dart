import 'package:flutter/material.dart';
import 'package:flutter_boro_uiux_kids_learning_app/Shared/config/size_config.dart';

class AppBarComFiltro extends StatefulWidget {
  @override
  _AppBarComFiltroState createState() => _AppBarComFiltroState();
}

class _AppBarComFiltroState extends State<AppBarComFiltro> {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    Color cinzaColor = Color(0xFFCADCED);

    var fotoPerfilContainer = Container(
      width: width / 5,
      height: width / 5,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange, width: 3.0),
          image: DecorationImage(
              scale: 1.5,
              image: new AssetImage('assets/images/personagem_perfil.png'),
              fit: BoxFit.scaleDown),
        ),
      ),
    );

    var dadosPerfil = Padding(
      padding: EdgeInsets.only(left: 8, top: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Egor Gajduk',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Text(
            'Intermediate',
            style: TextStyle(
                fontFamily: 'Arial',
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Colors.black38),
          ),
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.orange,
              ),
              Icon(Icons.star_rounded, color: Colors.orange),
              Icon(Icons.star_rounded, color: Colors.black12),
              Icon(Icons.star_rounded, color: Colors.black12)
            ],
          )
        ],
      ),
    );
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fotoPerfilContainer,
            dadosPerfil,
            Container(
              width: 45,
              height: 53,
              decoration: BoxDecoration(
                  border: Border.all(color: cinzaColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(3.0))),
              child: Icon(
                Icons.filter_list_alt,
                color: Colors.green,
                size: 35,
              ),
            ),
            Container(
              width: 45,
              height: 53,
              decoration: BoxDecoration(
                  border: Border.all(color: cinzaColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(3.0))),
              child: Icon(
                Icons.search,
                color: Colors.green,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
