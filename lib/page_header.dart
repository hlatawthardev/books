import 'package:flutter/material.dart';

class PageHeader extends SliverPersistentHeaderDelegate {
  PageHeader({this.minExtent, this.maxExtent});

  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(fit: StackFit.expand, children: <Widget>[
      Image.asset(
        'assets/ronnie-mayo-361348-unsplash.jpg',
        fit: BoxFit.cover,
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black54],
            stops: [0.5, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.repeated,
          ),
        ),
      ),
      Positioned(
        left: 18.0,
        right: 18.0,
        bottom: 18.0,
        child: Text(
          'Lorem ipsum',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
