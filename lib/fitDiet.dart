import 'package:fitezo/list.dart';
import 'package:flutter/material.dart';

import 'fitDietContainer.dart';

class FitDiet extends StatelessWidget {
  final List grid = [
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
    'fit',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
            ),
            itemCount: grid.length,
            itemBuilder: (context, index) {
              return GridContainer(
                con: grid[index],
              );
            }));
  }
}
