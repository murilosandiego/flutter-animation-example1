import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar flutter',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 9,
        ),
        ListData(
          title: 'Estudar flutter 2',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 8,
        ),
        ListData(
          title: 'Estudar flutter 3',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 7,
        ),
        ListData(
          title: 'Estudar flutter 4',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 6,
        ),
        ListData(
          title: 'Estudar flutter 5',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: 'Estudar flutter 6',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: 'Estudar flutter 7',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Estudar flutter 8',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Estudar flutter 9',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar flutter 10',
          subtitle: 'Flutter é muito fácil',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
