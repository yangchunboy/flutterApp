import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ThemeStyle.dart';
import 'package:app/utils/utils.dart';

import 'config/ConfigData.dart';



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(ConfigData.width, ConfigData.height),
      builder: () => 
        GetMaterialApp(
          initialRoute: '/',
          getPages: MyRouter.routes,
          darkTheme: ThemeStyle.dark(),
          navigatorKey: Utils.navigatorKey,
        )
    );
  }

  // 根据状态切换主题
  ThemeData switchTheme(theme) {
    ThemeData themeData = ThemeStyle.light();
    switch(theme.theme) {
      case 1: themeData = ThemeStyle.light();break;
      default: themeData = ThemeStyle.dark();
    }
    return themeData;
  }

}
