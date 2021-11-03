import 'package:basicwidget/models/explore_recipe.dart';
import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({Key? key, required this.recipe}) : super(key: key);

  final String category = 'Comida típica';
  final String title = 'La cazuela';
  final String description = 'Los secretos de la receta perfecta.';
  final String chef = 'Vilma narváez.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/magazine_pics/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              recipe.dietType,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                recipe.description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
