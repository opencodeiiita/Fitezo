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
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Calorie Profiles"),
          ),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: grid.length,
              itemBuilder: (context, index) {
                return GridContainer(
                  con: grid[index],
                );
              })),
    );
  }
}
