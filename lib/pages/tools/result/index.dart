import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';

class ToolRusult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '结果反馈'),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Center(
            child: Image(
              image: NetworkImage('https://static.zkh360.com/all/image/2021-08-21/success-917d22.png'),
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Center(
            child: Text(
              '该方案报价单已成功发送至',
              style: TextStyle(fontSize: 14, color: Color(0xFF909399)),
            ),
          ),
        ),
        Center(
          child: Text(
            '宋法山、姚奇',
            style: TextStyle(fontSize: 14, color: Color(0xFF303133)),
          ),
        ),
        Column(
          children: [
            Container(
              width: 120,
              height: 44,
              margin: EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1, color: Color(0xFF1E64F2)),
              ),
              child: Center(
                child: Text(
                  '返回工具页',
                  style: TextStyle(color: Color(0xFF1E64F2), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 175,
              height: 44,
              margin: EdgeInsets.only(top: 24),
              child: Center(
                child: Text(
                  '再次选型',
                  style: TextStyle(color: Color(0xFF1E64F2), fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
