import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/meal.dart';

class MealInfo extends StatelessWidget {
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  const MealInfo({
    Key? key,
    required this.duration,
    required this.affordability,
    required this.complexity,
  }) : super(key: key);
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Hard:
        return 'Hard';
      case Complexity.Challenging:
        return 'Challenging';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            const Icon(Icons.schedule),
            const SizedBox(width: 6),
            Text('$duration min')
          ],
        ),
        Row(
          children: [
            const Icon(Icons.work),
            const SizedBox(width: 6),
            Text(complexityText)
          ],
        ),
        Row(
          children: [
            const Icon(Icons.attach_money_rounded),
            const SizedBox(width: 6),
            Text(describeEnum(affordability))
          ],
        )
      ],
    );
  }
}
