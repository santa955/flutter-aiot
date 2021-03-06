import 'package:flutter/material.dart';

import 'package:flutter_aiot/widgets/app_bar.dart';

import 'list_item.dart';
import 'search_bar.dart';

class CustomerList extends StatelessWidget {
  _toDetail(BuildContext context, String url, {title = ''}) {
    print(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AiotAppBar(context, '客户列表'),
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
                  Customer(),
                  Customer(),
                  Customer(),
                  Customer(),
                  Customer(),
                  Customer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
