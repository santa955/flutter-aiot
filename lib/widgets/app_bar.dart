import 'dart:io';
import 'package:flutter/material.dart';

class AiotAppBar extends StatelessWidget {
  final String title; // 标题名称
  final double barHeight = 56.0; //标题栏高度

  AiotAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    //获取系统状态栏高度
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight, left: 16, right: 16),
      height: barHeight + statusBarHeight,
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Row(children: [
        Container(
            width: 24,
            height: 24,
            color: Color(0xFF007AFF),
            child: Center(
              child: Image(
                  width: 11,
                  height: 17,
                  image: NetworkImage(
                      'https://static.zkh360.com/all/image/2021-07-22/Back@2x-a4d831.png')),
            )),
        Expanded(
          flex: 1,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF303133),
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ]),
    );
  }
}
