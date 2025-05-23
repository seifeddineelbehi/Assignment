import 'package:assignment/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const platform = MethodChannel('com.rakuten.dataUsage');

  @override
  void initState() {
    openAccessibilitySettings();
    super.initState();
  }

  Future<void> openAccessibilitySettings() async {
    await platform.invokeMethod('openAccessibilitySettings');
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      designSize:
          (MediaQuery.of(context).size.width < 700 &&
                  MediaQuery.of(context).size.width > 635)
              ? const Size(480, 892)
              : MediaQuery.of(context).size.width < 400
              ? const Size(412, 892)
              : MediaQuery.of(context).size.width < 450
              ? const Size(500, 892)
              : MediaQuery.of(context).size.width < 650
              ? const Size(445, 892)
              : MediaQuery.of(context).size.width > 700
              ? const Size(612, 1024)
              : const Size(768, 1024),
      builder: (contextMain, child) {
        return ProviderScope(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: BottomNavBar(),
            ),
          ),
        );
      },
    );
  }
}
