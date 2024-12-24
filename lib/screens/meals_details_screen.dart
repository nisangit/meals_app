import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/models/meals_model.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({super.key, required this.selectedMeal});
  final MealsModel selectedMeal;

  @override
  Widget build(BuildContext context) {
    int ingrediantsIndex=0;
    int stepsIndex=0;
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric( horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "lib/resources/sample-food.jpg",
                width: 500,
                fit: BoxFit.fitWidth,
              ),
              

              const SizedBox(height: 15), // Add some spacing
              Center(
                child: Text(
                  "INGREDIENTS :",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    height: 2,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ),
              const SizedBox(
                  height: 10), // Add spacing between the title and the list
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: selectedMeal.ingredients.map((item) {
                    ingrediantsIndex++;
                    return Text( "$ingrediantsIndex)  $item",
                      style: GoogleFonts.lato(color: Colors.white, height: 2),
                      textAlign: TextAlign.start,
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                  height: 10),
              Center(
                child: Text(
                  "STEPS :",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    height: 2,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ),
              const SizedBox(
                  height: 10), // Add spacing between the title and the list
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: selectedMeal.steps.map((item) {
                    stepsIndex++;
                    return Text( "$stepsIndex)  $item",
                      style: GoogleFonts.lato(color: Colors.white, height: 2),
                      textAlign: TextAlign.start,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
