import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/customer/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';
import 'package:flutter_aiot/widgets/order_bottom_bar.dart';

import 'confirm_item.dart';

class ToolConfirm extends StatelessWidget {
  void onConfirm(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return new ToolCustomer();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '清单确认'),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          ListView(
            padding: EdgeInsets.only(top: 7, bottom: 86),
            children: [
              ConfirmItem(),
              ConfirmItem(),
              ConfirmItem(),
              ConfirmItem(),
              ConfirmItem(),
              ConfirmItem(),
            ],
          ),
          OrderBottomBar(
            amount: 12829.135,
            count: 12,
            showBack: true,
            backText: '上一步',
            confirmText: '确认',
            onConfirm: () => onConfirm(context),
          )
        ],
      ),
    );
  }
}
