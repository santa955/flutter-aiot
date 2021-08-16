import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aiot/pages/home/service.dart';
import 'package:screen_ratio_adapter/screen_ratio_adapter.dart';

var uiSize = BlueprintsRectangle(375, 667);

void main() {
  FxWidgetsFlutterBinding.ensureInitialized(uiBlueprints: uiSize, enableLog: true);
  runApp(AiotApp());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle appStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(appStyle);
  }
}

class AiotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '行家设备云',
      theme: ThemeData(primaryColor: Color(0xFFFFFFFF)),
      home: HomeService(),
      builder: FxTransitionBuilder(builder: null),
    );
  }
}
