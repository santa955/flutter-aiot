import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/customer/list/index.dart';

void main() {
  runApp(AiotApp());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle appStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
    );
    SystemChrome.setSystemUIOverlayStyle(appStyle);
  }
}

class AiotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '行家设备云',
        theme:ThemeData(
          // primaryColor: Color(0xFFFFFFFF),
        ),
        home: CustomerList()
    );
  }
}


