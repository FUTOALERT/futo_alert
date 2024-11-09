// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:futo_alert/src/core/router/router.dart';
import 'package:futo_alert/src/core/services/local_storage.dart/local_storage_export.dart';
import 'package:futo_alert/src/features/start_up/views/splash_screen.dart';
import 'package:futo_alert/src/general_widgets/general_widget_exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox(HiveKeys.appBox);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = OverLayLoaderController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: AppOverLay(
        controller: _controller,
        child: MaterialApp(
          title: 'Flutter App',
          routes: AppRouter.routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
            useMaterial3: true,
          ),
          builder: (context, widget) {
            return ScreenUtilInit(
              useInheritedMediaQuery: true,
              designSize: const Size(375, 812),
              builder: (context, child) {
                return widget!;
              },
            );
          },
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
