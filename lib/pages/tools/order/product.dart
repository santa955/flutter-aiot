import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _renderTag(tag) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        decoration: BoxDecoration(color: Color(0x141E64F2), borderRadius: BorderRadius.circular(3)),
        child: Text(tag, style: TextStyle(color: Color(0xFF1E64F2), fontSize: 12)),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 18),
          child: Text('智能硬件', style: TextStyle(color: Color(0xFF303133), fontSize: 14)),
        ),
        Container(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '液压油在线智能诊断系统',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF303133), fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  spacing: 8,
                  direction: Axis.horizontal,
                  runSpacing: 8,
                  children: [
                    _renderTag('型号：ZOPHM-01'),
                    _renderTag('交期：8周'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  '检测参数：污染度/含水率/水活性/温度污染度/含水率/水活性/温度',
                  style: TextStyle(color: Color(0xFF909399), fontSize: 12, height: 1.25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('建议售价：', style: TextStyle(color: Color(0xFF909399), fontSize: 12)),
                  Text(
                    '¥ 389.00',
                    style: TextStyle(color: Color(0xFFED0C1E), fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          image: NetworkImage('https://static.zkh360.com/all/image/2021-08-25/add-64e7cb.png'),
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '液压油在线智能诊断系统',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF303133), fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  spacing: 8,
                  direction: Axis.horizontal,
                  runSpacing: 8,
                  children: [
                    _renderTag('型号：ZOPHM-01'),
                    _renderTag('交期：8周'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  '检测参数：污染度/含水率/水活性/温度污染度/含水率/水活性/温度',
                  style: TextStyle(color: Color(0xFF909399), fontSize: 12, height: 1.25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('建议售价：', style: TextStyle(color: Color(0xFF909399), fontSize: 12)),
                  Text(
                    '¥ 389.00',
                    style: TextStyle(color: Color(0xFFED0C1E), fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: NetworkImage('https://static.zkh360.com/all/image/2021-08-25/reduce-671e9b.png'),
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('6', style: TextStyle(color: Color(0xFF303133), fontSize: 12)),
                        ),
                        Image(
                          image: NetworkImage('https://static.zkh360.com/all/image/2021-08-25/add-64e7cb.png'),
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '液压油在线智能诊断系统',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF303133), fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  spacing: 8,
                  direction: Axis.horizontal,
                  runSpacing: 8,
                  children: [
                    _renderTag('型号：ZOPHM-01'),
                    _renderTag('交期：8周'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  '检测参数：污染度/含水率/水活性/温度污染度/含水率/水活性/温度',
                  style: TextStyle(color: Color(0xFF909399), fontSize: 12, height: 1.25),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('建议售价：', style: TextStyle(color: Color(0xFF909399), fontSize: 12)),
                    Text(
                      '¥ 389.00',
                      style: TextStyle(color: Color(0xFFED0C1E), fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
