import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/screens/vegetable_details_screen.dart';

import '../widget/vegetable_tile_widget.dart';

class VegetablesListingScreen extends StatelessWidget {
  const VegetablesListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetables'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
        ),
        child: ListView(
          children: vegetables
              .map(
                (vegetable) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                    child: VegetableTileWidget(
                      vegetable: vegetable,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VegetableDetailsScreen(
                            vegetable: vegetable,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
