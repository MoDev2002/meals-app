import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;
  CategoryMealsScreen(this.availableMeals, {Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal> displayMeals = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    displayMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
  }

  void removeMeal(String mealId) {
    setState(() {
      displayMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 3,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'These Are Some $categoryTitle Recepies',
              style: Theme.of(context).textTheme.subtitle2,
              textScaleFactor: 0.8,
            )),
        body: ListView.builder(
            itemCount: displayMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(
                id: displayMeals[index].id,
                imageUrl: displayMeals[index].imageUrl,
                affordability: displayMeals[index].affordability,
                title: displayMeals[index].title,
                complexity: displayMeals[index].complexity,
                duration: displayMeals[index].duration,
              );
            }));
  }
}
