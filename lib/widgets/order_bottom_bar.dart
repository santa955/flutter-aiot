import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderBottomBar extends StatelessWidget {
  final double amount;
  final int count;
  final bool showBack;
  final String confirmText;
  final String backText;
  final GestureTapCallback onConfirm;

  OrderBottomBar({
    required this.amount,
    required this.count,
    this.showBack = false,
    this.backText = '返回',
    this.confirmText = '确认',
    required this.onConfirm,
  });

  Widget _renderBackButton(context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: Text(
        backText,
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xB3FFFFFF), fontSize: 14),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                    padding: EdgeInsets.only(top: 7, left: 16),
                    child: Text(
                      '¥ ${amount.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF), fontSize: 24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 16, bottom: 7),
                    child: Text(
                      '数量 × $count',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                if (showBack) _renderBackButton(context),
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
                      onPressed: onConfirm,
                      child: Text(
                        confirmText,
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
    );
  }
}
