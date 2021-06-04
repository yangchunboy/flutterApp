import 'package:app/pages/tools/toolsPage.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home/HomePage.dart';
import 'package:app/pages/product/ProductPage.dart';
import 'package:app/pages/detail/DetailPage.dart';
import 'package:app/pages/login/loginPage.dart';
import 'package:app/pages/counter/CounterPage.dart';


class MyRouter {


  static Map<String, WidgetBuilder> myRoutes(BuildContext context) {
    return {
      '/': (context) => HomePage(),
      '/product': (context){ 
        return ProductPage(productId: '1'); 
      },
      '/detail': (context) => DetailPage(params: {},),
      '/tools': (context) => ToolsPage(params: {},),
      '/login': (context) => LoginPage(params: {},),
      '/getx': (context) => CounterPage()
    };
  }

}
