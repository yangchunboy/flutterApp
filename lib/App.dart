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
          navigatorKey: Utils.navigatorKey,
        )
    );
  }

}
