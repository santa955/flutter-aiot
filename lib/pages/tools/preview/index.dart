import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/email/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';

class ToolPreview extends StatelessWidget {
  void onConfirm(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return new ToolEmail();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '报价单'),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Center(
            child: Image(
              image: NetworkImage('https://static.zkh360.com/all/image/2021-08-21/quotation-6be0b7.png'),
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
              '已成功生成报价单',
              style: TextStyle(fontSize: 14, color: Color(0xFF909399)),
            ),
          ),
        ),
        Center(
          child: Text(
            '报价单包含 excel、pdf 两种格式',
            style: TextStyle(fontSize: 14, color: Color(0xFF303133)),
          ),
        ),
        Column(
          children: [
            Container(
              width: 175,
              height: 44,
              margin: EdgeInsets.only(top: 60),
              decoration: BoxDecoration(
                color: Color(0xFF1E64F2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: SizedBox(
                child: TextButton(
                  onPressed: () => onConfirm(context),
                  child: Text(
                    '邮件发送',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
                  ),
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
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1, color: Color(0xFF1E64F2)),
              ),
              child: SizedBox(
                child: TextButton(
                  onPressed: () => onConfirm(context),
                  child: Text(
                    '报价单预览',
                    style: TextStyle(color: Color(0xFF1E64F2), fontSize: 16),
                  ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '上一步',
                    style: TextStyle(color: Color(0xFF1E64F2), fontSize: 14),
                  ),
                  Text(
                    '返回工具页',
                    style: TextStyle(color: Color(0xFF1E64F2), fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
