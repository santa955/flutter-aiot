import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '行家设备云',
          style: TextStyle(color: Color(0xFF222222), fontWeight: FontWeight.w500, fontSize: 18),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(top: 32, bottom: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '扫描二维码联系我们',
                    style: TextStyle(color: Color(0xFF222222), fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Image(
                      image: NetworkImage('https://static.zkh360.com/all/image/2021-08-16/31356-8705ed.jpg'),
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 50),
                  child: Center(
                    child: Text(
                      '长按保存二维码',
                      style: TextStyle(color: Color(0xFFA0A0A0), fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Center(
                    child: Text(
                      '市场合作',
                      style: TextStyle(color: Color(0xFF222222), fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '杨经理：',
                        style: TextStyle(color: Color(0xFF222222), fontSize: 14),
                      ),
                      Text('18501648237', style: TextStyle(color: Color(0xFF56A7FF), fontSize: 14)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Center(
                    child: Text(
                      '业务咨询',
                      style: TextStyle(color: Color(0xFF222222), fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '姚经理：',
                        style: TextStyle(color: Color(0xFF222222), fontSize: 14),
                      ),
                      Text('13917273639', style: TextStyle(color: Color(0xFF56A7FF), fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
