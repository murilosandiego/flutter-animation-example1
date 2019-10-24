import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudo', 'Casa'];

  int _category = 0;

  void _selectForward() {
    setState(() {
      _category++;
    });
  }

  void _selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          onPressed: _category > 0 ? _selectBackward : null,
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          disabledColor: Colors.white30,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: _category < categories.length - 1 ? _selectForward : null,
          color: Colors.white,
          icon: Icon(Icons.arrow_forward_ios),
          disabledColor: Colors.white30,
        ),
      ],
    );
  }
}
