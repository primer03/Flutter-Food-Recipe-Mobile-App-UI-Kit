import 'package:get/get.dart';

import '../controllers/searchdata_controller.dart';

class SearchdataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchdataController>(
      () => SearchdataController(),
    );
  }
}
