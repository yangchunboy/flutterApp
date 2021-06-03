import 'package:app/pages/home/HomePage.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ThemeStyle.dart';
// import 'package:app/utils/utils.dart';
import 'package:app/provider/ThemeChangeModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'config/ConfigData.dart';


// final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: ThemeChangeModel())],
      child: Consumer<ThemeChangeModel>(builder: (context, theme, _) {
          return 
          ScreenUtilInit(
            designSize: Size(ConfigData.width, ConfigData.height),
            builder: () => 
              MaterialApp(
                initialRoute: '/',
                routes: MyRouter.myRoutes(context),
                theme: switchTheme(theme),
                darkTheme: ThemeStyle.dark(),
                navigatorKey: Utils.navigatorKey,
              )
          );
        }
      )
    );
  }

  // 根据状态切换主题
  ThemeData switchTheme(ThemeChangeModel theme) {
    ThemeData themeData = ThemeStyle.light();
    switch(theme.theme) {
      case 1: themeData = ThemeStyle.light();break;
      default: themeData = ThemeStyle.dark();
    }
    return themeData;
  }

}
