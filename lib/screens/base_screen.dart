import 'package:crypto_app/screens/home.dart';
import 'package:crypto_app/screens/portfolio.dart';
import 'package:crypto_app/services/base_screen.dart';
import 'package:crypto_app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int pageIndex = 0;

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    BaseScreenService.basePageController.animateToPage(
      pageIndex,
      duration: BaseScreenService.basePageControllerDuration,
      curve: BaseScreenService.basePageControllerCurves,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: PageView(
          controller: BaseScreenService.basePageController,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            HomeScreen(),
            PortfolioScreen(),
            SizedBox.shrink(),
            SizedBox.shrink(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
          pageIndex: pageIndex,
          onTap: onTap,
        ),
      ),
    );
  }
}
