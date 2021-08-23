import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/confirm/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';
import 'package:flutter_aiot/widgets/order_bottom_bar.dart';

class ToolOrder extends StatelessWidget {
  void onConfirm(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return new ToolConfirm();
      }),
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
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                    children: [
                      Center(
                        child: Text('Cs'),
                      )
                    ],
                  ))
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                        child: ListView(
                      children: [
                        Center(
                          child: Text('Cs'),
                        )
                      ],
                    ))
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
        )
      ]),
    );
  }
}
