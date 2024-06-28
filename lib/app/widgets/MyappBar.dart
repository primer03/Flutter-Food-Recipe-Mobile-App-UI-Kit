import 'package:flutter/material.dart';
import 'package:foodrecipe/app/modules/home/controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class MyappBar extends StatelessWidget {
  const MyappBar({
    super.key,
    required this.controller,
    required this.innerBoxIsScrolled,
  });

  final HomeController controller;
  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      surfaceTintColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFFFFFFFF),
      forceElevated: innerBoxIsScrolled,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                controller.isDayTime()
                    ? Icons.wb_sunny_outlined
                    : Icons.nights_stay_outlined,
                size: 20,
                color: const Color(0xFF70B9BE),
              ),
              const SizedBox(width: 10),
              Text(
                controller.isDayTime() ? "Good Morning" : "Good Evening",
                style: GoogleFonts.mitr(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Text(
            'Alexia Primo',
            style: GoogleFonts.mitr(
              fontSize: 22,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
