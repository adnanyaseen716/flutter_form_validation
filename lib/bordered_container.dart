import 'package:flutter/material.dart';

class BorderedContainer extends StatelessWidget {
  const BorderedContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 2,
        ),
        Expanded(
          flex: 95,
          child: Container(
            decoration: BoxDecoration(
              border:
                  //
                  Border.all(
                      // color: Colors.black.withOpacity(0.4)
                      color: Color.fromARGB(
                        255,
                        9,
                        115,
                        13,
                      )
                      //
                      ,
                      width: 2),
            ),

            //
            child: child,
          ),
        ),
        Spacer(
          flex: 2,
        )
      ],
    );
  }
}
