import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/customer/detail/index.dart';

class ConfirmItem extends StatelessWidget {
  Widget _renderTag(tag) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(color: Color(0x141E64F2), borderRadius: BorderRadius.circular(3)),
      child: Text(tag, style: TextStyle(color: Color(0xFF1E64F2), fontSize: 12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return CustomerInfo();
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFff), borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Color(0xFFF0F2F5)),
                ),
              ),
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
                      '智能硬件',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF303133),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      '无选择',
                      style: TextStyle(
                          color: Color(0xFFC0C4CC), fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              child: Wrap(
                spacing: 8,
                direction: Axis.horizontal,
                runSpacing: 8,
                children: [
                  _renderTag('型号：ZOPHM-01'),
                  _renderTag('交期：8周'),
                  _renderTag('颜色：红'),
                  _renderTag('现货：是'),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 8, right: 12, left: 12),
                child: Text(
                  '检测参数：污染度/含水率/水活性/温度污染度/含水率/水活性/温度',
                  style: TextStyle(color: Color(0xFF909399), fontSize: 12, height: 1.25),
                )),
            Padding(
                padding: EdgeInsets.only(top: 4, left: 12, right: 12, bottom: 14),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        'SKU：AA3511082',
                        style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        '单位：套',
                        style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
