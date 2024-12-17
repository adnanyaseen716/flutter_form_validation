import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {super.key,
      required this.text,
      required this.hint,
      required this.prefixIcon,
      this.validator,
      this.inputType = TextInputType.text,
      this.obsecureText = false,
      this.onSuffixTap,
      this.controller});

  final String text;
  final String hint;
  final IconData prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  final bool obsecureText;
  final VoidCallback? onSuffixTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: FittedBox(
                    child: Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              const Flexible(
                child: FittedBox(
                    child: Text(
                  '  *',
                  style: TextStyle(color: Colors.red),
                )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 32,
          child: TextFormField(
            controller: controller,
            keyboardType: inputType,
            obscureText: obsecureText,
            cursorRadius: Radius.circular(2),
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Icon(prefixIcon),
                ),
              ),
              prefixIconColor: Color.fromARGB(
                255,
                9,
                115,
                13,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),

            // validation
            validator: validator,
          ),
        ),
        // const Spacer(
        //   flex: 1,
        // ),
      ],
    );
  }
}
