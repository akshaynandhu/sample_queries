import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sample_queries/controller/getx_controller.dart';
import 'package:sample_queries/views/lottie_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        builder: (context, widget){
          ScreenUtil.setContext(context);
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: widget!,);
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LottieSplash(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
