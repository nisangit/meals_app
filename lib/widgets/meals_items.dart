import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/models/meals_model.dart';

class MealsItems extends StatelessWidget {
  const MealsItems({super.key, required this.mealItem});
  final MealsModel mealItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/meals-details/${mealItem.title}');
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "lib/resources/sample-food.jpg"), // Correct usage of AssetImage
            fit: BoxFit.cover, // Ensure the image covers the entire container
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                mealItem.title,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${mealItem.duration} MINS",
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.work,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        mealItem.complexity.name.toUpperCase(),
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        mealItem.affordability.name.toUpperCase(),
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
