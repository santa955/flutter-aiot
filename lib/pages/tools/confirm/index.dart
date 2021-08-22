import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/tools/customer/index.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';

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
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1E64F2),
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(color: Color(0x801E64F2), blurRadius: 12, offset: Offset(0.0, 0.0)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 7, left: 16),
                          child: const Text(
                            '¥ 1556.00',
                            style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF), fontSize: 24),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 3, left: 16, bottom: 7),
                          child: const Text(
                            '数量 × 8',
                            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          '上一步',
                          style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xB3FFFFFF), fontSize: 14),
                        ),
                      ),
                      Container(
                          width: 96,
                          height: 44,
                          margin: EdgeInsets.only(left: 12, right: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: SizedBox(
                            child: TextButton(
                              onPressed: () => onConfirm(context),
                              child: Text(
                                '确 认',
                                style: TextStyle(color: Color(0xFF1E64F2), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
