import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/result/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';

class ToolEmail extends StatelessWidget {
  void onConfirm(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return new ToolRusult();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '邮件发送'),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '客户名称',
                  style: TextStyle(color: Color(0xFF303133), fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6, right: 12),
                  child: Text(
                    '*',
                    style: TextStyle(color: Color(0xFFFF4D4F), fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(color: Color(0xFFFC0C4CC)),
                      hintText: '请输入客户（公司）名称',
                    ),
                    cursorColor: Color(0xFF1E64F2),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            margin: EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '邮件抄送',
                  style: TextStyle(color: Color(0xFF303133), fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(color: Color(0xFFFC0C4CC)),
                      hintText: '请输入本报价方案名称',
                    ),
                    cursorColor: Color(0xFF1E64F2),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
              color: Color(0xFF1E64F2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: SizedBox(
              height: 44,
              child: TextButton(
                onPressed: () => onConfirm(context),
                child: Text(
                  '确定发送',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                '返回工具页',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF1E64F2), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
