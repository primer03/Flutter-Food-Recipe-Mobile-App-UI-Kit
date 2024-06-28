import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodrecipe/app/modules/mainpage/controllers/mainpage_controller.dart';
import 'package:foodrecipe/app/widgets/Ingredients.dart';
import 'package:foodrecipe/app/widgets/nutritionalItem.dart';
import 'package:foodrecipe/app/widgets/popularItem.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/vecteezy_a-flying-burger-with-all-the-layers_23809530.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      foregroundColor: const Color(0xFF042628),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(40, 40),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Icon(Icons.close),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      foregroundColor: const Color(0xFF042628),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(40, 40),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Icon(Icons.favorite_border),
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.75,
            minChildSize: 0.75,
            maxChildSize: 0.92,
            snap: true,
            builder: (context, scrollController) {
              return ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: const Color(0xFF97A2B0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    "Healthy Taco Salad",
                                    style: GoogleFonts.mitr(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  const FaIcon(
                                    FontAwesomeIcons.clock,
                                    size: 15,
                                    color: Color(0xFF97A2B0),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '15 Min',
                                    style: TextStyle(
                                      color: Color(0xFF97A2B0),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              ReadMoreText(
                                'This is a healthy taco salad recipe that is perfect for meal prep. The salad is made with ground turkey, black beans, corn, and other veggies. It is topped with a creamy avocado dressing. This salad is great for lunch or dinner. It is also gluten-free and dairy-free.',
                                trimLines: 2,
                                colorClickableText: const Color(0xFF0A2533),
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Show more',
                                trimExpandedText: 'Show less',
                                style: GoogleFonts.mitr(
                                  fontSize: 15,
                                  color: const Color(0xFF748189),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: const nutritionalItem(
                                          icon: FontAwesomeIcons.wheatAwn,
                                          value: '65g carbs',
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: const nutritionalItem(
                                          icon: FontAwesomeIcons.egg,
                                          value: '27g proteins',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: const nutritionalItem(
                                          icon:
                                              FontAwesomeIcons.fireFlameSimple,
                                          value: '120 Kcal',
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: const nutritionalItem(
                                          icon: FontAwesomeIcons.pizzaSlice,
                                          value: '91g fats',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE6EBF2),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF042628),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                        ),
                                        child: const Text(
                                          'Ingredients',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFE6EBF2),
                                          shadowColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          padding: const EdgeInsets.all(8),
                                        ),
                                        child: const Text(
                                          'Instructions',
                                          style: TextStyle(
                                            color: Color(0xFF0A2533),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'Ingredients',
                                    style: GoogleFonts.mitr(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      overlayColor: const Color(0xFF70B9BE),
                                      foregroundColor: const Color(0xFF70B9BE),
                                    ),
                                    child: Text(
                                      'Add All to Cart',
                                      style: GoogleFonts.mitr(
                                        fontSize: 17,
                                        color: const Color(0xFF70B9BE),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '6 Item',
                                style: GoogleFonts.mitr(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF748189),
                                ),
                              ),
                              const SizedBox(height: 10),
                              // IngredientsItem(controller: controller),
                              // IngredientsItem(controller: controller),
                              Obx(
                                () => Column(
                                  children: controller.ingredientsData
                                      .map((e) => IngredientsItem(
                                            ingredients: e,
                                          ))
                                      .toList(),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF70B9BE),
                                  foregroundColor: const Color(0xFFFFFFFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  minimumSize: const Size(double.infinity, 50),
                                  padding: const EdgeInsets.all(0),
                                ),
                                child: Text(
                                  'Add To Cart',
                                  style: GoogleFonts.mitr(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                  color: Color(0xFFEBF0F6), thickness: 1),
                              const SizedBox(height: 10),
                              Text(
                                'Ceator',
                                style: GoogleFonts.mitr(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    // padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE6EBF2),
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: const Color(0xFF70B9BE),
                                        width: 2,
                                      ),
                                    ),
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        'https://xsgames.co/randomusers/avatar.php?g=male',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lionel Messi',
                                          style: GoogleFonts.mitr(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'I\'m the author and recipe developer.',
                                          style: GoogleFonts.mitr(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF748189),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    'Related Recipes',
                                    style: GoogleFonts.mitr(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      overlayColor: const Color(0xFF70B9BE),
                                      foregroundColor: const Color(0xFF70B9BE),
                                    ),
                                    child: Text(
                                      'See All',
                                      style: GoogleFonts.mitr(
                                        fontSize: 17,
                                        color: const Color(0xFF70B9BE),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Get.find<MainpageController>().popularitem(
                                        image:
                                            'bread-toasted-cheese-topped-ham-and-fried-egg.jpg',
                                        name: 'Bread Toasted'),
                                    Get.find<MainpageController>().popularitem(
                                        image:
                                            'vecteezy_chicken-spicy-fast-food.jpg',
                                        name: 'Spicy Chicken'),
                                    Get.find<MainpageController>().popularitem(
                                        image:
                                            'vecteezy_homemade-chocolate-cake-sweet-pastry-dessert-with-brown_27793410.jpg',
                                        name: 'Chocolate Cake'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
