import 'package:animation/screens/home/widget/animated_listview.dart';
import 'package:animation/screens/home/widget/fade_container.dart';
import 'package:animation/screens/home/widget/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> fadeAnimation;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.325, 0.8, curve: Curves.linear),
        )),
        fadeAnimation = ColorTween(
                begin: Color.fromRGBO(247, 64, 106, 1.0),
                end: Color.fromRGBO(247, 64, 106, 0.0))
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.decelerate));

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrow: containerGrow,
            ),
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeAnimation: fadeAnimation,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
