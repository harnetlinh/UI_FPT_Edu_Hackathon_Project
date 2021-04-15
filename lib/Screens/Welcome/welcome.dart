import 'package:book_worm/Screens/Home/home.dart';
import 'package:book_worm/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    width: size.width,
                    padding:
                        EdgeInsets.only(top: size.height * 0.20, bottom: 10),
                    child: Text(
                      'BookWorm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/undraw_true_friends_c94g.svg',
                    width: size.width,
                    height: size.height * 0.32,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(top: 40, bottom: 10),
                    child: Text(
                      'Friend of every learner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam curabitur semper elit lectus enim. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    width: size.width * 0.9,
                    height: 60.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
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
                          "Get started",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
