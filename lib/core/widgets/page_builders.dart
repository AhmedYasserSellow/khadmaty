import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/bottom_nav_bar.dart';

class PageBuilder extends StatelessWidget {
  const PageBuilder({
    super.key,
    required this.slivers,
    this.bottomNavigationBar,
    this.extendBody = false,
  });
  final List<Widget> slivers;
  final Widget? bottomNavigationBar;
  final bool extendBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: extendBody,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: slivers,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class NestedScrollViewPageBuilder extends StatelessWidget {
  const NestedScrollViewPageBuilder({
    super.key,
    required this.appBar,
    required this.body,
    this.extendBody = false,
    this.bottomNavigationBar,
    this.controller,
  });
  final CustomAppBar appBar;
  final bool extendBody;
  final Widget body;
  final CustomBottomNavBar? bottomNavigationBar;
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: extendBody,
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [appBar];
          },
          body: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
