
import 'package:flutter/material.dart';
import 'package:recipe_calculator/recipe.dart';

import 'cardcontainer.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (context, index) {
          final recipe = Recipe.samples[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: RecipeCard(recipe: recipe),
          );
        },
      ),
    );
  }
}