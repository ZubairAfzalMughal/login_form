import 'package:flutter/material.dart';

import '../constant.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
                child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("Forgot Password?",style: TextStyle(
          color: kTextColor
        ),),
      ),
    );
  }
}
