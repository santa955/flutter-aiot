import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aiot/widgets/app_bar.dart';
import 'search_bar.dart';
import 'search_item.dart';

class ToolSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '产品速报'),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFF5F7FA)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchBar(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                children: [
                  SearchItem(),
                  SearchItem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
