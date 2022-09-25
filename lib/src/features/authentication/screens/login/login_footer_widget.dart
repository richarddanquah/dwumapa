import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: tSignUpAccount,
                style: Theme.of(context).textTheme.bodyText1,children:  const [

              TextSpan(text: tSignup,
                  style: TextStyle(color: Colors.red)
              ),

            ]))),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {},
          child: const Text.rich(TextSpan(text: tRegisterProvider,style: TextStyle(fontWeight: FontWeight.bold))),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(tGoogleAppleAccount,style: TextStyle(color: Colors.grey),),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(tLoginGoogleImage1),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(tSignInWithGoogle,style: TextStyle(color: Colors.black),)),
        ),

        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(tLoginAppleImage2),
              width: 40.0,
            ),
            onPressed: () {},
            label: const Text(tSignInWithApple,style: TextStyle(color: Colors.black),),),
        )
      ],
    );
  }
}
