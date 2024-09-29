import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/database_helper.dart';
import '../../../data/api_service.dart';
import '../../../repository/home_repo.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;
  final loading=false.obs;
  final allData = <ApiServiceResponse>[].obs;
  var localData = [].obs; // Local database
  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  @override
  void onInit() {
    super.onInit();
    fetchApiData();
    fetchLocalData();
  }

  Future<List<ApiServiceResponse>?> fetchApiData() async {
    try {
      loading.value=true;
      await fetchDataFromAPI().then((response) {
        return allData.value = response;
      });
      loading.value=false;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<void> fetchLocalData() async {
    var data = await dbHelper.queryAllRows();
    localData.assignAll(data);
  }

  Future<void> insertIntoLocalDb(ApiServiceResponse item) async {
    await dbHelper.insert({
      'name': item.name,
      'data': item.data?.toJson(), // Save data as a JSON string
    });
    fetchLocalData();
  }

  Future<void> deleteFromLocalDb(int id) async {
    await dbHelper.delete(id);
    fetchLocalData();
  }

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}
