import 'package:get/get.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController

  final count = 0.obs;
  final ingredientsData = [
    {
      "name": "Tortilla Chips",
      "image": "assets/images/Tortilla Chips.png",
      "amount": 1
    },
    {"name": "Avocado", "image": "assets/images/avocado.png", "amount": 1},
    {
      "name": "Red Cabbage",
      "image": "assets/images/Red Cabbage.png",
      "amount": 1
    },
    {"name": "Peanuts", "image": "assets/images/Peanuts.png", "amount": 1},
    {
      "name": "Red Onions",
      "image": "assets/images/Red Onions.png",
      "amount": 1
    },
  ].obs;
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

  void incrementAmount(int index) {
    ingredientsData[index]["amount"] =
        int.parse(ingredientsData[index]["amount"].toString()) + 1;
    ingredientsData.refresh();
  }

  void decrementAmount(int index) {
    if (int.parse(ingredientsData[index]["amount"].toString()) > 1) {
      ingredientsData[index]["amount"] =
          int.parse(ingredientsData[index]["amount"].toString()) - 1;
      ingredientsData.refresh();
    }
  }

  void increment() => count.value++;
}
