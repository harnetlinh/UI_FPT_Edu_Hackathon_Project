import 'package:book_worm/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String startScan = 'Start Scan';
    String dropdownValue = 'Vn';
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.05,
                    margin: EdgeInsets.only(
                        top: size.height * 0.1, bottom: size.height * 0.01),
                    alignment: Alignment.center,
                    // color: Colors.grey,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: size.width * 0.12,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 15,
                                  elevation: 10,
                                  style: TextStyle(color: Colors.black),
                                  underline: Container(),
                                  onChanged: (String newValue) {
                                    // setState(() {
                                    debugPrint(newValue);
                                    dropdownValue = newValue;
                                    // });
                                  },
                                  items: <String>[
                                    'Vn',
                                    'En',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: size.width * 0.1,
                              height: 60.0,
                              child: RaisedButton(
                                onPressed: () {
                                  debugPrint('Pronounce');
                                },
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(0),
                                  child: SvgPicture.asset(
                                    'assets/icons/Pronounce.svg',
                                    width: size.width * 0.1,
                                    // height: size.height * 0.32,
                                    fit: BoxFit.cover,
                                    // style: TextStyle(
                                    //   fontWeight: FontWeight.bold,
                                    //   fontSize: 22,
                                    // ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: size.width * 0.1,
                              height: 60.0,
                              color: Colors.white,
                              child: RaisedButton(
                                onPressed: () {
                                  debugPrint('Spelling');
                                },
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(0),
                                  child: SvgPicture.asset(
                                    'assets/icons/Spelling.svg',
                                    width: size.width * 0.1,
                                    // height: size.height * 0.32,
                                    fit: BoxFit.cover,
                                    // style: TextStyle(
                                    //   fontWeight: FontWeight.bold,
                                    //   fontSize: 22,
                                    // ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: size.width * 0.5,
                              height: 60.0,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.63,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(7.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.02),
                    width: size.width * 0.9,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Start Scan');
                        startScan = 'Pause Scan';
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: kPrimaryColor,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: kPrimaryColor.withOpacity(0.30),
                                blurRadius: 9,
                                offset: Offset(0, 8),
                              )
                            ]),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          startScan,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width * 0.9,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Stop and Save');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: kPrimaryColor,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: kPrimaryColor.withOpacity(0.30),
                                blurRadius: 9,
                                offset: Offset(0, 8),
                              )
                            ]),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Stop and save",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
