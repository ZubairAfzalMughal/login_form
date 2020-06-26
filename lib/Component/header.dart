import 'package:flutter/material.dart';
import 'package:login_form/constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 230.0,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: kHeaderColor,
        borderRadius:
            BorderRadius.only(bottomLeft: Radius.circular(50.0)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            top: 0.0,
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 100.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0,right:20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("Login",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ),
          ),
        ],
      ),
    );
  }
}
