import 'package:flutter/material.dart';

import 'package:flutter_aiot/widgets/app_bar.dart';

class CustomerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AiotAppBar(context, '客户详情'),
      body: Container(
          decoration: BoxDecoration(color: Color(0xFFF5F7FA)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(bottom: 24),
                child: Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 12, right: 12, bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://static.zkh360.com/all/image/2021-07-22/icon_basic@2x-3e1330.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  '基本信息',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF303133)),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFff),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        '客户名称：',
                                        style: TextStyle(color: Color(0xFF909399), fontSize: 14),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '淄博欧木特种纸业有限公司',
                                          style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '所属行业：',
                                        style: TextStyle(color: Color(0xFF909399), fontSize: 14),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '水泥生产和制造',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '联系地址：',
                                        style: TextStyle(color: Color(0xFF909399), fontSize: 14),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '上海市闵行区虹桥火车站旁丽宝广场T4办公楼6楼震坤行工业超市',
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 12, right: 12, bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://static.zkh360.com/all/image/2021-07-22/icon_people@2x-64ea78.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  '联系人',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF303133)),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFff),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        '姓      名：',
                                        style: TextStyle(color: Color(0xFF909399), fontSize: 14),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '王科技',
                                          style: TextStyle(color: Color(0xFF303133), fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '电      话：',
                                        style: TextStyle(color: Color(0xFF909399), fontSize: 14),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '12312345678',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Color(0xFF1E64F2), fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 12, right: 12, bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://static.zkh360.com/all/image/2021-07-22/icon_other@2x-656766.png')),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  '其他信息',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF303133)),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 11),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFff),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://static.zkh360.com/all/image/2020-11-09/icon_equipment@2x-006446.png'),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 8),
                                            child: Text(
                                              '查看设备列表',
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  TextStyle(color: Color(0xFF303133), fontSize: 14),
                                            ),
                                          )),
                                      Image(
                                        width: 16,
                                        height: 16,
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://static.zkh360.com/all/image/2020-11-03/arrow-3224f2.png'),
                                      ),
                                    ],
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
              ),
            )
          ])),
    );
  }
}
