import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helthcare/app/modules/home/controllers/home_controller.dart';
class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Internet Data', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
              child: Obx(() {
                if(controller.loading.value==true){
                  return const Center(child: CircularProgressIndicator());
                }
                if (controller.allData.isEmpty) {
                  return const Center(child: Text('No API data available'));
                }
                return ListView.builder(
                  itemCount: controller.allData.length,
                  itemBuilder: (context, index) {
                    var item = controller.allData[index];
                    return ListTile(
                      title: Text(item.name ?? 'Unknown'),
                      subtitle: Text(item.data?.description ?? 'No Description'),
                      trailing: IconButton(
                        icon: const Icon(Icons.save),
                        onPressed: () {
                          controller.insertIntoLocalDb(item);
                        },
                      ),
                    );
                  },
                );
              }),
            ),
            const Divider(),
            const Text('Local Database Data', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
              child: Obx(() {
                if (controller.localData.isEmpty) {
                  return Center(child: Text('No local data available'));
                }
                return ListView.builder(
                  itemCount: controller.localData.length,
                  itemBuilder: (context, index) {
                    var item = controller.localData[index];
                    return ListTile(
                      title: Text(item['name']),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          controller.deleteFromLocalDb(item['id']);
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}