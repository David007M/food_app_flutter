import 'package:flutter/material.dart';
import 'package:food_app/model/vegetable_model.dart';

import '../widget/vegetable_details_tile.dart';

class VegetableDetailsScreen extends StatelessWidget {
  const VegetableDetailsScreen({
    super.key,
    required this.vegetable,
  });

  final Vegetable vegetable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: vegetable.gradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset('assets/${vegetable.image}.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                vegetable.title,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: vegetable.gradientColors[1],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                vegetable.headline,
                style: const TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30),
            // Need a Expansion tile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: VegetableDetailsTile(vegetable: vegetable),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                vegetable.description.trim(),
                style: const TextStyle(
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
