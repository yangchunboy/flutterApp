import 'package:app/config/ConfigData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends  StatefulWidget{

  // final Map params;
  HomePage();

  @override
  _HomePageState createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/product', arguments: { 'productId': '1111' });
              Map<String, String> params = {
                'productId': 'qwertyuiop'
              };
              Get.toNamed('/product', arguments: params);
            },
            child: Text('点击我跳转商品页面并携带参数'),
          ),
          // TextButton(
          //   onPressed: () {
          //     // Navigator.pushNamed(context, '/detail');
          //     Get.toNamed('/detail');
          //   },
          //   child: Text('点击我提起去请求数据和展示的demo页面'),
          // ),
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/tools');
              Get.toNamed('/tools');
            },
            child: Text('点击跳转工具页面'),
          ),
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/getx');
              Get.toNamed('/getx');
            },
            child: Text('点击跳转getX的例子'),
          ),
          TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/getx');
              Get.toNamed('/notFund');
            },
            child: Text('404页面'),
          ),
        ],
      )
    );
  }
  
}





