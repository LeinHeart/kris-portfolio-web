import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'module/homepage/view/homepage_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomepageView(),
    ),
  );
}
