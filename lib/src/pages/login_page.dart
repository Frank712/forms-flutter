import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_createBackground(context), _loginForm(context)],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: size.height * 0.32,
            ),
          ),
          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text(
                  'Ingreso',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                _createEmailInput(),
                SizedBox(
                  height: 30.0,
                ),
                _createPasswordInput(),
                SizedBox(
                  height: 30.0,
                ),
                _createButton()
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Text('¿Olvidó la contraseña?'),
          SizedBox(height: 50.0,),
        ],
      )
    );
  }

  Widget _createEmailInput() { 
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo Electrónico'),
      ),
    );
  }

  Widget _createPasswordInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock_outline, color: Colors.deepPurple),
            labelText: 'Contraseña'),
      ),
    );
  }

  Widget _createButton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
        child: Text('Ingresar'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      elevation: 0.0,
      color: Colors.deepPurple,
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  Widget _createBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final purpleBackground = Container(
      height: size.height * 0.45,
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
                SizedBox(
                  height: 10.0,
                  width: double.infinity,
                ),
                Text('Iniciar Sesión',
                    style: TextStyle(color: Colors.white, fontSize: 25.0))
              ],
            ))
      ],
    );
  }
}
