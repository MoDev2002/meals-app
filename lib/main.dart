import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorite.dart';
import './screens/settings_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './models/meal.dart';
import './models/dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };
  List<Meal> _availableMeals = dummyMeal;

  void _setFilters(Map<String, bool> filtersData) {
    setState(() {
      _filters = filtersData;

      _availableMeals = dummyMeal.where((meal) {
        if (_filters['gluten'] == true && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] == true && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] == true && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] == true && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favorite(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meals App',
        theme: ThemeData(
            colorScheme: const ColorScheme.light(
              primary: Color.fromRGBO(224, 168, 0, 1), //GoldenRod
              secondary: Color.fromARGB(255, 231, 116, 132), //Terra Cotta
            ),
            scaffoldBackgroundColor: const Color.fromARGB(255, 238, 240, 242),
            canvasColor: const Color.fromARGB(255, 238, 240, 242),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    color: Color.fromARGB(255, 44, 54, 63),
                    overflow: TextOverflow.clip,
                    fontFamily: 'Allan'),
                bodyText2: const TextStyle(
                  fontSize: 14,
                ),
                subtitle1: const TextStyle(
                    // color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                headline3: const TextStyle(
                    color: Color.fromARGB(255, 44, 54, 63),
                    fontSize: 18,
                    fontFamily: 'Metrophobic'),
                headline1: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
                caption: const TextStyle(
                  fontSize: 32,
                  fontFamily: 'Allan',
                  // fontWeight: FontWeight.bold,
                ),
                headline2: const TextStyle(
                  fontSize: 30,
                  letterSpacing: 1,
                ),
                headline4: const TextStyle(
                    fontSize: 22,
                    fontFamily: 'Allan',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 44, 54, 63)),
                subtitle2: const TextStyle(
                    fontSize: 26,
                    fontFamily: 'Allan',
                    color: Color.fromARGB(255, 44, 54, 63)))),
        // home: TabsScreen(),
        // initialRoute: '/',
        routes: {
          '/': (ctx) => TabsScreen(),
          CategoryMealsScreen.routeName: (ctx) =>
              CategoryMealsScreen(_availableMeals),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
          SettingsScreen.routeName: (ctx) =>
              SettingsScreen(_filters, _setFilters)
        },
      ),
    );
  }
}
