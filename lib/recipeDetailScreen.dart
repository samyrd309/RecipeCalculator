// recipe_detail_screen.dart
import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetailScreen({required this.recipe});

  @override
  _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  int servings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            SizedBox(height: 16.0),
            Text(
              'Ingredients for $servings serving(s):',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
                final ingredient = widget.recipe.ingredients[index];
                return ListTile(
                  title: Text(
                    '${ingredient.quantity * servings} ${ingredient.measure} ${ingredient.name}',
                  ),
                );
              },
            ),
            SizedBox(height: 16.0),
            Slider(
              value: servings.toDouble(),
              min: 1,
              max: 10,
              onChanged: (value) {
                setState(() {
                  servings = value.toInt();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
