import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorite.dart';
import './meal_info.dart';
import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.affordability,
    required this.title,
    required this.complexity,
    required this.duration,
  }) : super(key: key);

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final favMeals = Provider.of<Favorite>(context);
    return InkWell(
        onTap: () => selectMeal(context),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(40)),
                          color: Colors.black54),
                      width: 300,
                      // color: Colors.black45,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: FittedBox(
                        child: FloatingActionButton(
                            heroTag: null,
                            backgroundColor: Colors.white,
                            onPressed: () {
                              favMeals.toggleFavorite(id);
                            },
                            child: favMeals.isMealFavorite(id)
                                ? const Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.pink,
                                  )
                                : const Icon(Icons.favorite_border_rounded)),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MealInfo(
                      duration: duration,
                      affordability: affordability,
                      complexity: complexity))
            ],
          ),
        ));
  }
}
