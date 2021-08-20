import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';
import 'confirm_item.dart';

class ToolConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '清单确认'),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFF5F7FA)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 78),
                shrinkWrap: true,
                children: [
                  ConfirmItem()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
