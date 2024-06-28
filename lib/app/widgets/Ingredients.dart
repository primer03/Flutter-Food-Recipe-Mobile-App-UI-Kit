import 'package:flutter/material.dart';
import 'package:foodrecipe/app/modules/detail/controllers/detail_controller.dart';
import 'package:foodrecipe/app/modules/mainpage/controllers/mainpage_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientsItem extends StatelessWidget {
  const IngredientsItem({
    Key? key,
    required this.ingredients,
  }) : super(key: key);
  final Map<String, dynamic> ingredients;

  @override
  Widget build(BuildContext context) {
    int idx = Get.find<DetailController>().ingredientsData.indexOf(ingredients);
    return Card(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: const Color(0xFFE6EBF2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                ingredients['image'],
                width: 20,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              ingredients['name'],
              style: GoogleFonts.mitr(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.find<DetailController>().decrementAmount(idx);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: ingredients['amount'] == 1
                    ? const Color(0xFFCCD4DE)
                    : const Color(0xFF70B9BE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: BorderSide(
                  color: ingredients['amount'] == 1
                      ? const Color(0xFFCCD4DE)
                      : const Color(0xFF70B9BE),
                ),
                minimumSize: const Size(22, 22),
                padding: const EdgeInsets.all(0),
              ),
              child: const Icon(
                Icons.remove,
                size: 15,
              ),
            ),
            Text(
              ingredients['amount'].toString(),
              style: GoogleFonts.mitr(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<DetailController>().incrementAmount(idx);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF70B9BE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  color: Color(0xFF70B9BE),
                ),
                minimumSize: const Size(22, 22),
                padding: const EdgeInsets.all(0),
              ),
              child: const Icon(
                Icons.add,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
