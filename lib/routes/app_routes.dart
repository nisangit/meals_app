import 'package:go_router/go_router.dart';
import 'package:meals_app/resources/categories_data.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/meals_details_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';

GoRouter approutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: '/meals-screen/:categoryId',
      builder: (context, state) {
        final categoryId = state.pathParameters['categoryId']!;
        return MealsScreen(
          mealsList: dummyMeals
              .where((meal) => meal.categories.contains(categoryId))
              .toList(),
        );
      },
    ),
    GoRoute(
        path: '/meals-details/:mealTitle',
        builder: (context, state) {
          final title = state.pathParameters['mealTitle'];
          final selectedMealModel = dummyMeals.firstWhere(
            (curMeal) {
              return curMeal.title == title;
            },
          );
          return MealsDetailsScreen(selectedMeal: selectedMealModel);
        })
  ],
);
