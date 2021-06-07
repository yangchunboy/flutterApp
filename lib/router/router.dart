import 'package:get/get.dart';
import 'package:app/pages/tools/toolsPage.dart';
import 'package:app/pages/home/HomePage.dart';
import 'package:app/pages/product/ProductPage.dart';
import 'package:app/pages/detail/DetailPage.dart';
import 'package:app/pages/login/loginPage.dart';
import 'package:app/pages/counter/CounterPage.dart';
import 'package:app/pages/notFund/NotFundPage.dart';


class MyRouter {

  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/product', page: () {
      print(Get.arguments);
      String productId = Get.arguments['productId'];
      return ProductPage(productId: productId); 
    }),
    GetPage(name: '/detail', page: () => DetailPage(params: {})),
    GetPage(name: '/tools', page: () => ToolsPage(params: {})),
    GetPage(name: '/login', page: () => LoginPage(params: {})),
    GetPage(name: '/getx', page: () => CounterPage())
  ];

}
