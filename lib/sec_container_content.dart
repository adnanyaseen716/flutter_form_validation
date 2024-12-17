import 'package:flutter/material.dart';
import 'package:flutter_text_input/validations.dart';

class SecContainerContent extends StatefulWidget {
  const SecContainerContent({super.key});

  @override
  State<SecContainerContent> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SecContainerContent> {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  bool _obscureText = true;
  bool _confirmObscureText = true;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 100,
          //row

          child: Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 40,

                //  col 1

                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    const Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Flexible(
                              child: FittedBox(
                            child: Text(
                              'Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                          Flexible(
                              child: Text(
                            '  *',
                            style: TextStyle(color: Colors.red),
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 65,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              icon: Flexible(
                                child: FittedBox(
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color.fromARGB(
                                      255,
                                      9,
                                      115,
                                      13,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            prefixIcon: const Flexible(
                                child: FittedBox(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(
                                    255,
                                    9,
                                    115,
                                    13,
                                  ),
                                ),
                              ),
                            )),
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Empty Field!';
                          } else if (value.isNotEmpty) {
                            return value.isCorrectPassword()
                                ? null
                                : 'Password Length must be >= 8!';
                          }
                        },
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
              //spacer

              Spacer(
                flex: 4,
              ),

              // column 2

              Expanded(
                flex: 40,
                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    const Expanded(
                      flex: 30,
                      child: Row(
                        children: [
                          Flexible(
                              child: FittedBox(
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                          Flexible(
                              child: Text(
                            '  *',
                            style: TextStyle(color: Colors.red),
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 65,
                      child: TextFormField(
                        controller: confirmPasswordController,
                        obscureText: _confirmObscureText,
                        decoration: InputDecoration(
                            hintText: 'Enter Password Again',
                            suffixIcon: IconButton(
                              icon: Flexible(
                                child: FittedBox(
                                  child: Icon(
                                    _confirmObscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color.fromARGB(
                                      255,
                                      9,
                                      115,
                                      13,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _confirmObscureText = !_confirmObscureText;
                                });
                              },
                            ),
                            prefixIcon: const Flexible(
                                child: FittedBox(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(
                                    255,
                                    9,
                                    115,
                                    13,
                                  ),
                                ),
                              ),
                            )),
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Empty Field';
                          } else if (value.isNotEmpty && value.length < 8) {
                            return 'Password Length must be >= 8!';
                          } else if (value != passwordController.text) {
                            return 'Passwords do not match!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        )
      ],
    );
  }
}
