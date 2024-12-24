import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/models/category_model.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.categoryId});
  final CategoryModel category;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(
            '/meals-screen/${category.id}'); // Pass the category ID dynamically
      },
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          category.title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
