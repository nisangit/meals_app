import 'package:flutter/material.dart';
import 'package:meals_app/models/meals_model.dart';
import 'package:meals_app/widgets/meals_items.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.mealsList});
  final List<MealsModel> mealsList;
  @override
  Widget build(BuildContext context) {
    Widget content;
    if (mealsList.isEmpty) {
      return content = const Center(
        child: Text("Uff! Something went wrong select trying other catgories"),
      );
    } else {
      content = ListView.builder(
        itemBuilder: (ctx, index) {
          return MealsItems(mealItem: mealsList[index]);
        },
        itemCount: mealsList.length,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your Meals !"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: content,
      ),
    );
  }
}
