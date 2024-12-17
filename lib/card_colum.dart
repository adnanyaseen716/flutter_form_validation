import 'package:flutter/material.dart';
import 'package:flutter_text_input/bordered_container.dart';
import 'package:flutter_text_input/first_container_content.dart';
import 'package:flutter_text_input/last_buttons.dart';
import 'package:flutter_text_input/sec_container_content.dart';

class MainColum extends StatelessWidget {
  const MainColum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          flex: 10,
          child: Row(
            children: [
              Spacer(
                flex: 30,
              ),
              Expanded(
                flex: 40,
                child: FittedBox(
                  child: Text(
                    'Please Register Here!',
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        9,
                        115,
                        13,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 30,
              )
            ],
          ),
        ),
        //
        Expanded(
          flex: 150,
          child: Row(
            children: [
              Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 90,
                child: Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    //  colum in card container
                    child: const Column(
                      children: [
                        const Expanded(
                          flex: 7,
                          child: TwoTexts(
                            text: 'Personal Information',
                            textFlex: 15,
                          ),
                        ),
                        const Expanded(
                          flex: 60,
                          child: BorderedContainer(
                            child: FirstContainerContent(),
                          ),
                        ),
                        const Expanded(
                          flex: 7,
                          child: TwoTexts(
                            text: 'User Password',
                            textFlex: 12,
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: BorderedContainer(
                            child: SecContainerContent(
                                // passwordController: passwordController,
                                ),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        const Expanded(flex: 7, child: LastTwoButtons()),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),

        Spacer(
          flex: 5,
        ),
      ],
    );
  }
}

//-------------------------------------------------------

class TwoTexts extends StatelessWidget {
  const TwoTexts({
    super.key,
    required this.text,
    required this.textFlex,
  });

  final String text;
  final int textFlex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 2,
        ),
        Expanded(
          flex: textFlex,
          child: FittedBox(
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Spacer(
          flex: 80,
        )
      ],
    );
  }
}
