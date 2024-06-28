import 'package:flutter/material.dart';
import 'package:foodrecipe/app/modules/home/controllers/home_controller.dart';
import 'package:foodrecipe/app/modules/mainpage/controllers/mainpage_controller.dart';
import 'package:foodrecipe/app/widgets/EditorItem.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/searchdata_controller.dart';

class SearchdataView extends GetView<SearchdataController> {
  const SearchdataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: const Color(0xFFFFFFFF),
              surfaceTintColor: const Color(0xFFFFFFFF),
              floating: true,
              snap: true,
              forceElevated: innerBoxIsScrolled,
              title: Text(
                'Search',
                style: GoogleFonts.mitr(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                // search bar
                TextField(
                  cursorColor: const Color(0xFF042628),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.mitr(
                      color: const Color(0xFF97A2B0),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF97A2B0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF97A2B0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF97A2B0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Get.find<HomeController>().categorybtn(
                        text: "Breakfast",
                        color: const Color(0xFF70B9BE),
                        textColor: const Color(0xFFFFFFFF),
                      ),
                      Get.find<HomeController>().categorybtn(
                        text: "Lunch",
                        color: const Color(0xFFF1F5F5),
                        textColor: const Color(0xFF0A2533),
                      ),
                      Get.find<HomeController>().categorybtn(
                        text: "Dinner",
                        color: const Color(0xFFF1F5F5),
                        textColor: const Color(0xFF0A2533),
                      ),
                      Get.find<HomeController>().categorybtn(
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
                      "Popular Recipes",
                      style: GoogleFonts.mitr(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shadowColor: const Color(0xFF70B9BE),
                        surfaceTintColor: const Color(0xFFFFFFFF),
                        overlayColor: const Color(0xFF70B9BE),
                      ),
                      child: Text(
                        "View All",
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
                      Get.find<MainpageController>().popularitem(
                          image:
                              'bread-toasted-cheese-topped-ham-and-fried-egg.jpg',
                          name: 'Bread Toasted'),
                      Get.find<MainpageController>().popularitem(
                          image: 'vecteezy_chicken-spicy-fast-food.jpg',
                          name: 'Spicy Chicken'),
                      Get.find<MainpageController>().popularitem(
                          image:
                              'vecteezy_homemade-chocolate-cake-sweet-pastry-dessert-with-brown_27793410.jpg',
                          name: 'Chocolate Cake'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Editor’s Choice",
                      style: GoogleFonts.mitr(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shadowColor: const Color(0xFF70B9BE),
                        surfaceTintColor: const Color(0xFFFFFFFF),
                        overlayColor: const Color(0xFF70B9BE),
                      ),
                      child: Text(
                        "View All",
                        style: GoogleFonts.mitr(
                          fontSize: 15,
                          color: const Color(0xFF70B9BE),
                        ),
                      ),
                    ),
                  ],
                ),
                const EditorItem(
                  key: ValueKey('1'),
                  title: "Easy homemade beef burger",
                  author: {
                    'name': 'Alexia Primo',
                    'image':
                        'https://xsgames.co/randomusers/avatar.php?g=female',
                  },
                  image:
                      'vecteezy_a-flying-burger-with-all-the-layers_23809530.jpg',
                ),
                const EditorItem(
                  key: ValueKey('2'),
                  title: "Homemade chocolate cake",
                  author: {
                    'name': 'Gerard Pique',
                    'image':
                        'https://xsgames.co/randomusers/avatar.php?g=female',
                  },
                  image:
                      'vecteezy_homemade-chocolate-cake-sweet-pastry-dessert-with-brown_27793700.jpg',
                ),
                const EditorItem(
                  key: ValueKey('3'),
                  title: "Spicy minced pork salad",
                  author: {
                    'name': 'Xavi Alonso',
                    'image': 'https://xsgames.co/randomusers/avatar.php?g=male',
                  },
                  image:
                      'vecteezy_spicy-minced-pork-salad-with-chili-flakes-lime-chopped_5429281.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String addnewLineText(String text) {
    return text.replaceAll(' ', '\n');
  }
}
