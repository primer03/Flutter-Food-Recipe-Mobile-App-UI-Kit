import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodrecipe/app/modules/account/views/account_view.dart';
import 'package:foodrecipe/app/modules/home/views/home_view.dart';
import 'package:foodrecipe/app/modules/searchdata/views/searchdata_view.dart';

import 'package:get/get.dart';

import '../controllers/mainpage_controller.dart';

class MainpageView extends GetView<MainpageController> {
  const MainpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: Obx(
        () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            final slideAnimation = Tween<Offset>(
              begin: const Offset(0, 1), // Start from the bottom
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ));

            final fadeAnimation = Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ));

            return SlideTransition(
              position: slideAnimation,
              child: FadeTransition(
                opacity: fadeAnimation,
                child: child,
              ),
            );
          },
          child: getViewForIndex(controller.isSelectPage.value),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        backgroundColor: const Color(0xFF042628),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image.asset(
          'assets/images/chef.png',
          width: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          height: 60,
          color: const Color(0xFFFFFFFF),
          shadowColor: const Color(0xFF042628),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                itembottmbar(
                    controller: controller,
                    index: 0,
                    icon: Icons.home_outlined),
                itembottmbar(
                    controller: controller, index: 1, icon: Icons.search),
                itembottmbar(
                    controller: controller,
                    index: 2,
                    icon: Icons.notifications_none_outlined),
                itembottmbar(
                    controller: controller,
                    index: 3,
                    icon: Icons.person_outline),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getViewForIndex(int idx) {
    switch (idx) {
      case 0:
        return const HomeView(key: ValueKey(0));
      case 1:
        return const SearchdataView(key: ValueKey(1));
      case 2:
        return const Center(
          child: Text('Favorite'),
        );
      case 3:
         return const AccountView(key: ValueKey(3));
      default:
        return const HomeView(key: ValueKey(0));
    }
  }

  IconButton itembottmbar(
      {required MainpageController controller,
      required int index,
      required IconData icon}) {
    return IconButton(
      onPressed: () => controller.selectPage(index),
      icon: Icon(
        icon,
        color: controller.isSelectPage.value == index
            ? const Color(0xFF70B9BE)
            : const Color(0xFF97A2B0),
      ),
    );
  }
}
