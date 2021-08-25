import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/confirm/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';
import 'package:flutter_aiot/widgets/order_bottom_bar.dart';

import 'product.dart';

class ToolOrder extends StatelessWidget {
  void onConfirm(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return new ToolConfirm();
      }),
    );
  }

  Widget _renderCategory(label, selected) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 3,
          height: 20,
          decoration: BoxDecoration(color: selected ? Color(0xFFED0C1E) : Colors.transparent),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 44,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 12),
            decoration: BoxDecoration(color: selected ? Color(0xFFFFFFFF) : Color(0xFFF5F7FA)),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                color: selected ? Color(0xFF303133) : Color(0xFF606266),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AiotAppBar(context, '振动方案报价'),
      body: Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
        Row(
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(color: Color(0xFFF5F7FA)),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(bottom: 100),
                      children: [
                        _renderCategory('智能硬件', false),
                        _renderCategory('配件/辅材', false),
                        _renderCategory('软件订阅', true),
                        _renderCategory('安装及服务', false),
                        _renderCategory('其他', false),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(bottom: 100),
                        children: [Product(), Product(), Product(), Product()],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        OrderBottomBar(
          amount: 1038.89,
          count: 3,
          showBack: false,
          confirmText: '去确认',
          onConfirm: () => onConfirm(context),
        ),
      ]),
    );
  }
}
