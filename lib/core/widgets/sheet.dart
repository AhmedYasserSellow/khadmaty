import 'package:flutter/material.dart';

class Sheet extends StatelessWidget {
  const Sheet({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(250, 250, 250, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            32,
          ),
          topRight: Radius.circular(
            32,
          ),
        ),
      ),
      child: child,
    );
  }
}
