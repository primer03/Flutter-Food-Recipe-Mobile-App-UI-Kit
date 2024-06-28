import 'package:flutter/material.dart';
import 'package:foodrecipe/app/modules/home/controllers/home_controller.dart';
import 'package:foodrecipe/app/modules/mainpage/controllers/mainpage_controller.dart';
import 'package:foodrecipe/app/modules/mainpage/views/mainpage_view.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF70B9BE),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          width: double.infinity,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  // คือการกำหนดขนาดของ widget ให้เป็นขนาดที่กำหนดไว้
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    // คือการกำหนดขนาดของ widget ให้เป็นขนาดที่เหมาะสม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Later',
                            style: GoogleFonts.mitr(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/loginfood.png',
                        ),
                        Column(
                          children: [
                            Text(
                              'Help your path to health goals with happiness',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.mitr(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Get.off(
                                  () => MainpageView(),
                                  transition: Transition.zoom,
                                  duration: const Duration(milliseconds: 500),
                                );
                                Get.put(MainpageController());
                                Get.put(HomeController());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF042628),
                                minimumSize: const Size(double.infinity, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: GoogleFonts.mitr(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Create New Account",
                                style: GoogleFonts.mitr(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
