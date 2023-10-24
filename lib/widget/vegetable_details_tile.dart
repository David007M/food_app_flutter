import 'package:flutter/material.dart';
import 'package:food_app/model/vegetable_model.dart';

class VegetableDetailsTile extends StatelessWidget {
  VegetableDetailsTile({super.key, required this.vegetable});

  final Vegetable vegetable;

  final List<String> nutrients = [
    'Energy',
    'Sugar',
    'Fat',
    'Protein',
    'Vitamins',
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.zero,
      child: ExpansionTile(
        title: const Text(
          'Nutritional value per 100g',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        children: nutrients
            .map((nutrient) => Column(
                  children: [
                    const Divider(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: vegetable.gradientColors[1],
                      ),
                      title: Text(
                        nutrient,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: vegetable.gradientColors[1],
                        ),
                      ),
                      trailing: Text(
                        vegetable.nutrition[nutrients.indexOf(nutrient)],
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
