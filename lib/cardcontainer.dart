// recipe_card.dart
import 'package:flutter/material.dart';
import 'package:recipe_calculator/recipeDetailScreen.dart';
import 'recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
          elevation: 4.0,
          child: Column(
            children: [
              Image.asset(
                recipe.imageUrl,
                width: 500.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
              Text(recipe.label, ),
            ],
          )
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailScreen(recipe: recipe),
          ),
        );
      },
    );
  }
}