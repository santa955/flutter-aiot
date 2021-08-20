import 'dart:io';
import 'package:flutter/material.dart';

class AiotAppBar extends AppBar {
  AiotAppBar(
    BuildContext context,
    String titleName, {
    bool centerTitle = true,
  }) : super(
          title: Text(
            titleName,
            style: TextStyle(color: Color(0xFF222222), fontWeight: FontWeight.w500, fontSize: 18),
          ),
          centerTitle: centerTitle,
          elevation: 0,
        );
}
