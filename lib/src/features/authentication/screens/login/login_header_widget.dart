import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';
class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Center(child: Text(tLoginTitle, style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),)),
        Center(
          child: Text(tLoginSubTitle,
              style: TextStyle(color: Colors.black),),
        ),
      ],
    );
  }
}
