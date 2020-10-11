import 'dart:developer';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hodhod_mart/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter/material.dart';

class TrackOrderBody extends StatefulWidget {
  @override
  _TrackOrderBodyState createState() => _TrackOrderBodyState();
}

class _TrackOrderBodyState extends State<TrackOrderBody> {
  var subTextColor = Colors.black.withOpacity(0.3);
  var textColor = Colors.black.withOpacity(0.7);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            padding : EdgeInsets.only(top : 20),
            height: 100,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TimelineTile(
                          endChild: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Order Placed',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(color: Colors.green, fontSize: 10),
                            ),
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.start,
                          isFirst: true,
                          afterLineStyle: LineStyle(
                              color: Colors.grey,),
                          indicatorStyle: IndicatorStyle(
                              indicatorXY: 0.5,
                              color: Colors.green,
                              width: 25.0,
                              height: 25.0),
                        ),
                        TimelineTile(
                          endChild: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Processing',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.start,
                          lineXY: 0.5,
                          hasIndicator: true,
                          beforeLineStyle: LineStyle(color: Colors.grey),
                          indicatorStyle: IndicatorStyle(
                              indicatorXY: 0.5,
                              color: Colors.grey,
                              width: 25.0,
                              height: 25.0),
                        ),
                        TimelineTile(
                          endChild: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Dispatched',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.start,
                          lineXY: 0.2,
                          isLast: false,
                          beforeLineStyle: LineStyle(color: Colors.grey),
                          indicatorStyle: IndicatorStyle(
                              indicatorXY: 0.5,
                              color: Colors.grey,
                              width: 25.0,
                              height: 25.0),
                        ),
                        TimelineTile(
                          endChild: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Delivered',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.start,
                          lineXY: 0.2,
                          isLast: true,
                          indicatorStyle: IndicatorStyle(
                            indicatorXY: 0.5,
                            color: Colors.grey,
                            width: 25.0,
                            height: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER DETAILS',
                          maxLines: 1,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Placed On :',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Feb 26,2020',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: subTextColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order ID :',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '7835462',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: subTextColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Amount Total :',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '118 SR',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SHIPPING DETAILS',
                          maxLines: 1,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  offset: Offset(1.0, 1.0),
                                  spreadRadius: 2.0,
                                  blurRadius: 5.0,
                                  color: Colors.grey,
                                )
                              ]),
                              child: Image.asset(
                                'assets/m2.jpeg',
                                height: 110,
                                width: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              height: 110,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Osaka Entry Fee Superday',
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: '118.00 SR    ',
                                        style: TextStyle(
                                            color: kTextColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                        children: [
                                          TextSpan(
                                            text: '250.00 SR',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Text(
                                    'Size - S',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'QTY : 1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SHIPPING ADDRESS',
                          maxLines: 1,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/mail.svg',
                                    color: Colors.amber,
                                    width: 30,
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text('Email'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 0, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/phone.svg',
                                    color: Colors.blueAccent,
                                    width: 30,
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text('Phone'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'dsjhfsdjdsfhjsdfj hdfj jskdfh d fgksg fkdsj fgskfk sgjf ksd fkjdsjgfs dkjfgds fdskgf ksjdgf kjsdgf kjsdf gsjd fkjsgd fkjsg fjkgjsdf gkjsgdjfg jksdgf sdjkfgkdgsjf skdgfk dsgfsd',
                                maxLines: 5,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: kTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
