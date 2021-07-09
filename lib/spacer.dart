import 'package:flutter/material.dart';

class SpaceX extends StatelessWidget {
  final double x;
  SpaceX(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: this.x);
  }
}

class SpaceY extends StatelessWidget {
  final double y;
  SpaceY(this.y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.y);
  }
}
