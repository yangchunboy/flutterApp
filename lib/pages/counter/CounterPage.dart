import 'package:app/getx/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('getX的计数器demo'),
      ),
      body: Column(
        children: [
          Obx(() => Text("Clicks: ${c.count}")),
          Center(
            child: TextButton(
              onPressed: changeTheme, 
              child: Text('点击切换主题'))
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      )
    );
  }

  void changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light(): ThemeData.dark());
  }
}