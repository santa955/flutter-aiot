import 'package:flutter/material.dart';

class AiotAppBar extends AppBar {
  PreferredSizeWidget _bottom() {
    return PreferredSize(
      child: Container(
        height: 1.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFF0F2F5),
            offset: Offset(0, 1),
            blurRadius: 0,
          )
        ]),
      ),
      preferredSize: Size.fromHeight(1.0),
    );
  }

  AiotAppBar(
    BuildContext context,
    String titleName, {
    bool centerTitle = true,
    bool showBottom = true,
  }) : super(
          title: Text(
            titleName,
            style: TextStyle(color: Color(0xFF222222), fontWeight: FontWeight.w500, fontSize: 18),
          ),
          centerTitle: centerTitle,
          elevation: 0,
          // bottom: showBottom ? _bottom() : null,
        );
}
