import 'dart:io';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFff)),
        padding: EdgeInsets.only(
          top: 6,
          right: 16,
          bottom: 12,
          left: 16,
        ),
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                  controller: controller,
                  style: TextStyle(color: Color(0xFF303133), fontSize: 13),
                  decoration: new InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    fillColor: Color(0xFFF0F2F5),
                    filled: true,
                    hintStyle: TextStyle(color: Color(0xFFC0C4CC)),
                    hintText: '请输入产品SKU或编号或名称',
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 6),
                      child: Image.network(
                        'https://static.zkh360.com/image/2020-06-29/searchx-1593415659155.png',
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(maxWidth: 38),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF0F2F5), width: 1),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF1E64F2), width: 1),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )

                  // onChanged: onSearchTextChanged,
                  ),
            ),
          ],
        ));
  }
}
