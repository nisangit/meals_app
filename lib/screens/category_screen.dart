import 'package:flutter/material.dart';
import 'package:meals_app/resources/categories_data.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories !"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          itemCount: availableCategories.length,
          itemBuilder: (context, index) {
            final categoryItem = availableCategories[index];
            final categoryId = dummyMeals[index];
            return CategoryGridItem(
              category: categoryItem,
              categoryId: categoryId.id,
            );
          },
        ),
      ),
    );
  }
}
