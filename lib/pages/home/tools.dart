import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aiot/pages/customer/list/index.dart';
import 'package:flutter_aiot/pages/tools/order/index.dart';
import 'package:flutter_aiot/pages/tools/search/index.dart';

class HomeTools extends StatelessWidget {
  Widget _widgetTool(context, icon, text, navigate) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return navigate;
            }),
          );
        },
        child: Container(
          child: Column(
            children: [
              Image(image: icon, width: 33, height: 32, fit: BoxFit.cover),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(text, style: TextStyle(color: Color(0xFF606266), fontSize: 14)),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Container(
      decoration: BoxDecoration(color: Color(0xFFF5F7FA)),
      child: Stack(
        children: [
          new Container(
            child: Image(
              image: NetworkImage('https://static.zkh360.com/all/image/2021-08-19/bg-b44d13.png'),
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          new Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              title: new Text('行家设备云', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
            ),
            body: Container(
              margin: EdgeInsets.only(top: 125.5, left: 12, right: 12),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(8)),
              child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(color: Color(0xFF1E64F2)),
                            child: SizedBox(width: 6, height: 15),
                          ),
                          Expanded(
                              child: Text(
                            '智能报价',
                            style: TextStyle(
                              color: Color(0xFF303133),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _widgetTool(
                            context,
                            NetworkImage('https://static.zkh360.com/all/image/2021-08-19/sn-c0753d.png'),
                            '振动方案报价',
                            new ToolOrder(),
                          ),
                          _widgetTool(
                            context,
                            NetworkImage('https://static.zkh360.com/all/image/2021-08-19/oil-eb3402.png'),
                            '油液方案报价',
                            new CustomerList(),
                          ),
                          _widgetTool(
                            context,
                            NetworkImage('https://static.zkh360.com/all/image/2021-08-19/uct-ebb6da.png'),
                            '产品速报',
                            new ToolSearch(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
