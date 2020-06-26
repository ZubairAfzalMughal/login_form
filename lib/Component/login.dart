import 'package:flutter/material.dart';

import '../constant.dart';


class Login extends StatelessWidget {
  const Login({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.9,
                child: FlatButton(
        onPressed: (){},
        color: kHeaderColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Text("login",style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic
        ),),
      ),
    );
  }
}
