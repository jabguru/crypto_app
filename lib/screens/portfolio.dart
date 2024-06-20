import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/widgets/coin_widget.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:crypto_app/widgets/portfolio_balance_ring.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: eqW(24.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: 'Portfolio'),
              VerticalSpacing(eqH(29.0)),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$6,242.50',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      VerticalSpacing(eqH(4.0)),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const [
                            TextSpan(
                                text: '+1.56% (\$97.38) ',
                                style: TextStyle(color: kPrimaryPurple)),
                            TextSpan(text: 'Overall'),
                          ],
                        ),
                      ),
                      VerticalSpacing(eqH(48.0)),
                      const PorfolioBalanceRing(),
                      VerticalSpacing(eqH(48.0)),
                      const CoinWidget(name: 'Bitcoin', price: '21,262.60'),
                      const CoinWidget(name: 'Ethereum', price: '1,225.85'),
                      const CoinWidget(name: 'Bitcoin', price: '21,262.60'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
