import 'package:flutter/material.dart';
import 'package:flutter_aiot/pages/customer/detail/index.dart';

class Customer extends StatelessWidget {
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
          children: [
            Padding(
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
                      '淄博欧木特种纸业有限公司',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF303133),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 0, left: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Text('设备数量：', style: TextStyle(color: Color(0xFF909399), fontSize: 14)),
                          Text('10',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Color(0xFF303133), fontSize: 14)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Text('所属行业：', style: TextStyle(color: Color(0xFF909399), fontSize: 14)),
                          Expanded(
                            flex: 1,
                            child: Text('造纸和纸制品业造纸和纸制品业造纸和纸制品业',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Color(0xFF303133), fontSize: 14)),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 0, left: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Text('联 系 人：', style: TextStyle(color: Color(0xFF909399), fontSize: 14)),
                          Text('张科技',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Color(0xFF303133), fontSize: 14)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Text('服务热线：', style: TextStyle(color: Color(0xFF909399), fontSize: 14)),
                          Expanded(
                            flex: 1,
                            child: Text('19828419281',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Color(0xFF303133), fontSize: 14)),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
