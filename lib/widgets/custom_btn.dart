import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.onPressed,
    required this.buttonName,
    required this.buttonColor,
  });

  // create a global accessble varibles

  final VoidCallback? onPressed;
  final String buttonName;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Center(child: Text(buttonName)),
        ),
      ),
    );
  }
}
