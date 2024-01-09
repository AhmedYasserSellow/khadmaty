import 'package:flutter/material.dart';

class PageBuilder extends StatelessWidget {
  const PageBuilder({super.key, required this.slivers});
  final List<Widget> slivers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: slivers,
        ),
      ),
    );
  }
}
