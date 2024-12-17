//  last row

import 'package:flutter/material.dart';
import 'package:flutter_text_input/main.dart';
import 'package:flutter_text_input/my_button.dart';

class LastTwoButtons extends StatelessWidget {
  const LastTwoButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 39,
        ),
        Expanded(
          flex: 10,
          child: MyButton(
              onPressed: () {},
              color: Colors.red,
              text: 'Cancel',
              icon: Icons.cancel_sharp),
        ),
        const Spacer(
          flex: 2,
        ),
        Expanded(
          flex: 10,
          child: MyButton(
              onPressed: () {
                if (MyHomePage.globalKey.currentState?.validate() == true) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Form Validation Successful!')));
                }
              },
              color: Colors.green,
              text: 'Register',
              icon: Icons.done_outline_rounded),
        ),
        const Spacer(
          flex: 39,
        ),
      ],
    );
  }
}
