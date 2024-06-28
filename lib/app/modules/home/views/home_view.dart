import 'package:flutter/material.dart';
import 'package:foodrecipe/app/widgets/MyappBar.dart';
import 'package:foodrecipe/app/widgets/popularItem.dart';
import 'package:foodrecipe/app/widgets/recipesFeatured.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            MyappBar(
                controller: controller, innerBoxIsScrolled: innerBoxIsScrolled),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: GoogleFonts.mitr(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      recipesFeatured(),
                      recipesFeatured(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.mitr(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shadowColor: const Color(0xFF70B9BE),
                        surfaceTintColor: const Color(0xFFFFFFFF),
                        overlayColor: const Color(0xFF70B9BE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "See All",
                        style: GoogleFonts.mitr(
                          fontSize: 15,
                          color: const Color(0xFF70B9BE),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      controller.categorybtn(
                        text: "Breakfast",
                        color: const Color(0xFF70B9BE),
                        textColor: const Color(0xFFFFFFFF),
                      ),
                      controller.categorybtn(
                        text: "Lunch",
                        color: const Color(0xFFF1F5F5),
                        textColor: const Color(0xFF0A2533),
                      ),
                      controller.categorybtn(
                        text: "Dinner",
                        color: const Color(0xFFF1F5F5),
                        textColor: const Color(0xFF0A2533),
                      ),
                      controller.categorybtn(
                        text: "Snack",
                        color: const Color(0xFFF1F5F5),
                        textColor: const Color(0xFF0A2533),
                      ),
                    ].expand((e) => [e, const SizedBox(width: 10)]).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Popular Recipes',
                      style: GoogleFonts.mitr(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shadowColor: const Color(0xFF70B9BE),
                        surfaceTintColor: const Color(0xFFFFFFFF),
                        overlayColor: const Color(0xFF70B9BE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "See All",
                        style: GoogleFonts.mitr(
                          fontSize: 15,
                          color: const Color(0xFF70B9BE),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(3, (index) => const popularItem()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
