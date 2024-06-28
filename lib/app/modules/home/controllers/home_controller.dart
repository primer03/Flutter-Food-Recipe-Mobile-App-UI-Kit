import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
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

  bool isDayTime() {
    String time = DateFormat('HH:mm').format(DateTime.now());
    int hr = int.parse(time.split(' ')[0].split(':')[0]);
    return hr >= 6 && hr < 18 ? true : false;
  }

  void increment() => count.value++;

  ElevatedButton categorybtn(
      {required String text, required Color color, required Color textColor}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shadowColor: const Color(0xFF70B9BE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.mitr(
          fontSize: 15,
          color: textColor,
        ),
      ),
    );
  }
}
