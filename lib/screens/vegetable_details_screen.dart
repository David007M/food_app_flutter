import 'package:flutter/material.dart';
import 'package:food_app/model/vegetable_model.dart';

class VegetableDetailsScreen extends StatelessWidget {
  const VegetableDetailsScreen({
    super.key,
    required this.vegetable,
  });

  final Vegetable vegetable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text(
            vegetable.title,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: vegetable.gradientColors[1],
            ),
          ),
        ],
      ),
    );
  }
}
