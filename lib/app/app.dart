import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_forecast/feature/weather/presentation/view/weather_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          themeAnimationCurve: Curves.easeInCubic,
          themeAnimationDuration: const Duration(seconds: 1),
          home: WeatherScreen(),
        );
      },
    );
  }
}
