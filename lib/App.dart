import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ThemeStyle.dart';
// import 'package:app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/ConfigData.dart';


// final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(ConfigData.width, ConfigData.height),
      builder: () => 
        MaterialApp(
          initialRoute: '/',
          routes: MyRouter.myRoutes(context),
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
