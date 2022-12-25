import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transit extends PageRouteBuilder {
  final Widget widget;
  Transit({required this.widget})
      : super(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secanimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInCubic);
              return ScaleTransition(
                scale: animation,
                child: child,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secanimation) {
              return widget;
            });
}
