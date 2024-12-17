import 'package:flutter/material.dart';
import 'package:flutter_text_input/text_fields.dart';

class FirstContainerContent extends StatelessWidget {
  const FirstContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 30,
          child: Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 50,
                child: TextFields(
                    text: 'Full Name',
                    hint: 'Enter Full Name',
                    prefixIcon: Icons.person,
                    validator: (value) {
                      return value!.isEmpty ? 'Empty Field!' : null;
                    }),
              ),
              Spacer(
                flex: 4,
              ),
              Expanded(
                flex: 50,
                child: TextFields(
                  text: 'Father Name',
                  hint: 'Enter Father Name',
                  prefixIcon: Icons.person,
                  validator: (value) {
                    return value!.isEmpty ? 'Empty Field!' : null;
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
//

        Expanded(
          flex: 30,
          child: Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 18,
                child: TextFields(
                  text: 'Country Code',
                  hint: '87',
                  prefixIcon: Icons.phone,
                  inputType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty Field!';
                    } else if (!value.codeUnits.every(
                      (element) => element >= 48 && element <= 57,
                    )) {
                      return 'Enter Only Digits!';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 30,
                child: TextFields(
                  text: 'Phone Number',
                  hint: '301345678',
                  prefixIcon: Icons.phone,
                  inputType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty Field!';
                    } else if (!value.codeUnits.every(
                      (element) => element >= 48 && element <= 57,
                    )) {
                      return 'Enter Only Digits!';
                    } else if (value.length != 10) {
                      return 'Invalid Number!';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Expanded(
                flex: 50,
                child: TextFields(
                  text: 'Gmail',
                  hint: 'example@gmail.com',
                  prefixIcon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Empty Field!';
                    } else if (!value.endsWith('@gmail.com')) {
                      return 'Invalid Gmail!';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),

        //

        Expanded(
          flex: 30,
          child: Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 50,
                child: TextFields(
                    text: 'CNIC No.',
                    hint: '_____-_______-_',
                    prefixIcon: Icons.perm_identity,
                    inputType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Empty Field!';
                      } else if (!value.codeUnits.every(
                        (element) => element >= 48 && element <= 57,
                      )) {
                        return 'Enter Only Digits!';
                      } else if (value.length != 13) {
                        return 'Enter 13 digits CNIC number!';
                      } else {
                        return null;
                      }
                    }),
              ),
              Spacer(
                flex: 4,
              ),
              Expanded(
                flex: 50,
                child: TextFields(
                  text: 'City',
                  hint: 'Enter City',
                  prefixIcon: Icons.location_city,
                  validator: (value) {
                    return value!.isEmpty ? 'Empty Field!' : null;
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),

        //
      ],
    );
  }
}
