import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text(
        'Não possui uma conta? Cadastre-se',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 12,
          letterSpacing: 0.5,
        ),
      ),
      padding: EdgeInsets.only(
        top: 160,
      ),
    );
  }
}
