import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainpageController extends GetxController {
  //TODO: Implement MainpageController

  final count = 0.obs;
  final isSelectPage = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selectPage(int index) {
    isSelectPage.value = index;
  }

  void increment() => count.value++;

  SizedBox popularitem({required String image, required String name}) {
    return SizedBox(
      width: 140,
      child: Card(
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/$image',
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                name,
                style: GoogleFonts.mitr(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
