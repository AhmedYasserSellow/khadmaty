import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(leading: SizedBox(), title: 'Home', trailing: []),
    );
  }
}
