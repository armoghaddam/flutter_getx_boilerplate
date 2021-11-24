import 'package:get/get.dart';
import 'package:flutter_getx_boilerplate/app/common/storage/storage.dart';
import 'package:flutter_getx_boilerplate/app/data/api_helper.dart';

class HomeController extends GetxController {
  final ApiHelper _apiHelper = Get.find();

  final RxList _dataList = RxList();
  List<dynamic> get dataList => _dataList;
  set dataList(List<dynamic> dataList) => _dataList.addAll(dataList);

  @override
  void onReady() {
    super.onReady();

    getPosts();
  }

  void getPosts() {
    _apiHelper.getPosts().futureValue(
          (dynamic value) => dataList = value,
          retryFunction: getPosts,
        );
  }

  void onEditProfileClick() {
    Get.back();
  }

  void onFaqsClick() {
    Get.back();
  }

  void onLogoutClick() {
    Storage.clearStorage();
    // Get.offAllNamed(Routes.home);
    //Specify the initial SCREEN you want to display to the user after logout
  }
}
