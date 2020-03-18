import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[_createBackground(context)],
    ));
  }

  Widget _createBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final purpleBackground = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0)
      ])),
    );

    final circle = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(255, 255, 255, 0.08)),
    );

    return Stack(
      children: <Widget>[
        purpleBackground,
        Positioned(
          child: circle,
          top: 75.0,
          left: 30.0,
        ),
        Positioned(
          child: circle,
          top: -45.0,
          right: -30.0,
        ),
        Positioned(
          child: circle,
          bottom: -55.0,
          right: -45.0,
        ),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox(height: 10.0, width: double.infinity,),
              Text('Iniciar Sesión', style: TextStyle(color: Colors.white, fontSize: 25.0))
            ],
          )
        )
      ],
    );
  }
}
