import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomeIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                children: [
                  Container(
                    child: Image(
                      image: NetworkImage('https://static.zkh360.com/all/image/2021-08-16/banner@2x-1d6af4.png'),
                      width: 375,
                      height: 188,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 12, bottom: 0, left: 12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xFFFFF5F5)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                            child: Image(
                              image:
                                  NetworkImage('https://static.zkh360.com/all/image/2021-08-16/image1@2x-464462.png'),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      NetworkImage('https://static.zkh360.com/all/image/2021-08-16/x1@2x-4714d6.png'),
                                  width: 119,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    '?????????????????????????????????????????????????????????????????????????????????????????????',
                                    style:
                                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF222222)),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 12, bottom: 0, left: 12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xFFFFF5F5)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                            child: Image(
                              image: NetworkImage('https://static.zkh360.com/all/image/2021-08-16/d2@2x-5c7cd2.png'),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      NetworkImage('https://static.zkh360.com/all/image/2021-08-16/ds2@2x-5d2d9a.png'),
                                  width: 124,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    '???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                                    style:
                                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF222222)),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 12, bottom: 30, left: 12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xFFFFF5F5)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                            child: Image(
                              image: NetworkImage('https://static.zkh360.com/all/image/2021-08-16/s3@2x-5e10ab.png'),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image:
                                      NetworkImage('https://static.zkh360.com/all/image/2021-08-16/ss3@2x-5e8427.png'),
                                  width: 168,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    '?????????????????????????????????????????????????????????????????????24??????????????????????????????',
                                    style:
                                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF222222)),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
