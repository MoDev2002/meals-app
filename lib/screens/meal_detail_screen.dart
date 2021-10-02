import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorite.dart';
import '../models/mesauring_icon_icons.dart';
import '../models/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final favMeals = Provider.of<Favorite>(context);
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = dummyMeal.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          heroTag: null,
          backgroundColor: Colors.white,
          onPressed: () {
            favMeals.toggleFavorite(mealId);
          },
          child: favMeals.isMealFavorite(mealId)
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Colors.pink,
                )
              : const Icon(Icons.favorite_border_rounded)),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.network(
            selectedMeal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 270,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: double.infinity - 300,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 400,
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          selectedMeal.title,
                          style: Theme.of(context).textTheme.headline2,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                        )),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        'INGREDIENTS',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Container(
                        height: 180,
                        child: ListView.builder(
                            itemCount: selectedMeal.ingredients.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 150,
                                height: 200,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  color: Colors.white,
                                  // Theme.of(context).scaffoldBackgroundColor,
                                  elevation: 3,
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 10),
                                        alignment: Alignment.center,
                                        child: Image.network(
                                          selectedMeal.ingredients[index]
                                              .ingredientImage,
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Text(
                                          selectedMeal.ingredients[index]
                                              .ingredientName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Icon(MesauringIcon
                                                  .measuring_spoons),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              selectedMeal.ingredients[index]
                                                  .ingredientAmount,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        'RECIPE',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Container(
                      height: 300,
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                            itemCount: selectedMeal.steps.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      foregroundColor: Colors.white,
                                      child: Text('# ${index + 1}'),
                                    ),
                                    title: Text(selectedMeal.steps[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3),
                                  ),
                                  Divider()
                                ],
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
