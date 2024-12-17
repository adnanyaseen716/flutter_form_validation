import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.color,
    required this.text,
    required this.icon,
    required this.onPressed,
  });
  final Color color;
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 20,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Expanded(
              flex: 25,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                )),
            Expanded(
              flex: 70,
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, right: 5),
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
