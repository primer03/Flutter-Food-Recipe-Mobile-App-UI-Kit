import 'package:flutter/material.dart';
import 'package:foodrecipe/app/widgets/favorites.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> favorites = [
      {
        'title': 'Nasi Goreng (Indonesian Fried Rice)',
        'image': 'https://i.imgur.com/hHvaAzf.jpeg',
        'author': {
          'name': 'Seol Yoona',
          'image': 'https://i.imgur.com/1k9kPGu.jpeg'
        }
      },
      {
        'title': 'Spaghetti',
        'image': 'https://i.imgur.com/TzXD3WN.jpeg',
        'author': {
          'name': 'Kim Min-jeong',
          'image': 'https://i.imgur.com/fJ1kbjR.jpeg'
        }
      },
      {
        'title': 'Yentafo',
        'image': 'https://i.imgur.com/PBAsOqG.jpeg',
        'author': {
          'name': 'Minatozaki Sana',
          'image': 'https://i.imgur.com/Qs5A3vT.jpeg'
        }
      },
      {
        'title': 'Fried pork and fried shrimp',
        'image': 'https://i.imgur.com/XNsk72u.jpeg',
        'author': {
          'name': 'An Yu-jin',
          'image': 'https://i.imgur.com/lJN1KbH.jpeg'
        }
      },
      {
        'title': 'Teriyaki Beef and Rice Bowl',
        'image': 'https://i.imgur.com/qXZMRi7.jpeg',
        'author': {
          'name': 'Yu Ji-min',
          'image': 'https://i.imgur.com/HNkDnJ7.jpeg'
        }
      },
      {
        'title': 'Cheesy Tokbokki korean',
        'image': 'https://i.imgur.com/n4nv6rC.jpeg',
        'author': {
          'name': 'Lee Hye-ri',
          'image': 'https://i.imgur.com/1eCYUkX.jpeg'
        }
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: NestedScrollView(
        floatHeaderSlivers:
            true, //คือการให้ SliverAppBar ลอยขึ้นมาเมื่อเลื่อนหน้าจอลง
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: const Color(0xFFFFFFFF),
              surfaceTintColor: const Color(0xFFFFFFFF),
              floating: true,
              snap: true,
              forceElevated: innerBoxIsScrolled,
              title: Text(
                'Account',
                style: GoogleFonts.mitr(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF70B9BE),
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage('https://i.imgur.com/1k9kPGu.jpeg'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seol Yoona',
                          style: GoogleFonts.mitr(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Recipe Developer',
                          style: GoogleFonts.mitr(
                            fontSize: 15,
                            color: const Color(0xFF48525F),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF353535),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(40, 40),
                        padding: const EdgeInsets.all(0),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFFFFFFF),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "My Favorites",
                      style: GoogleFonts.mitr(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        overlayColor: const Color(0xFF70B9BE),
                      ),
                      child: Text(
                        'See all',
                        style: GoogleFonts.mitr(
                          fontSize: 20,
                          color: const Color(0xFF70B9BE),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    return favoritesItem(
                      title: favorites[index]['title'],
                      image: favorites[index]['image'],
                      author: {
                        'name': favorites[index]['author']['name'],
                        'image': favorites[index]['author']['image'],
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
