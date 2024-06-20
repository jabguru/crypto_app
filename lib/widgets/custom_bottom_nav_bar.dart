import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/gen/assets.gen.dart';
import 'package:crypto_app/services/base_screen.dart';
import 'package:flutter/cupertino.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  final int pageIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    bool needsPadding = MediaQuery.of(context).viewPadding.bottom > 0;

    double iconWidth = eqW(24.0);

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: kScaffoldColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: needsPadding ? 16.0 : 0),
        child: CupertinoTabBar(
          backgroundColor: kScaffoldColor,
          currentIndex: pageIndex,
          onTap: onTap,
          activeColor: kPrimaryPurple,
          inactiveColor: kStormGrey,
          border: null,
          items: [
            BottomNavigationBarItem(
              icon: Assets.images.tabHome.svg(
                width: iconWidth,
                colorFilter: ColorFilter.mode(
                  pageIndex ==
                          BaseScreenService.getPageIndex(BottomNavScreens.home)
                      ? kPrimaryPurple
                      : kStormGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Assets.images.tabPortfolio.svg(
                width: iconWidth,
                colorFilter: ColorFilter.mode(
                  pageIndex ==
                          BaseScreenService.getPageIndex(
                              BottomNavScreens.portfolio)
                      ? kPrimaryPurple
                      : kStormGrey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Assets.images.tabTrade.svg(
                width: iconWidth,
              ),
            ),
            BottomNavigationBarItem(
              icon: Assets.images.tabAccount.svg(
                width: iconWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
