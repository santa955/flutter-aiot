import 'package:flutter/material.dart';

class ConfirmItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFFff), borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
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
                    style: TextStyle(color: Color(0xFFC0C4CC), fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 1.0, color: Color(0xFFF0F2F5))),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        '液压油在线智能诊断系统',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF303133),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Text(
                        '¥ 389.00',
                        style: TextStyle(color: Color(0xFFED0C1E), fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          '型号：ZOPHM-01',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '交期：8周',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '数量：2',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 1.0, color: Color(0xFFF0F2F5))),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        '液压油在线智能诊断系统',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF303133),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Text(
                        '¥ 389.00',
                        style: TextStyle(color: Color(0xFFED0C1E), fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          '型号：ZOPHM-01',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '交期：8周',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '数量：2',
                          style: TextStyle(color: Color(0xFF909399), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
