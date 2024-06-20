import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/gen/assets.gen.dart';
import 'package:crypto_app/widgets/action_button.dart';
import 'package:crypto_app/widgets/coin_widget.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:crypto_app/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.fromLTRB(eqW(8.0), eqW(4.0), eqW(8.0), eqW(0.0)),
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(eqW(16.0), 0.0, eqW(16.0), eqW(13.0)),
              decoration: BoxDecoration(
                gradient: kPurplePinkGradientReverse,
                borderRadius: BorderRadius.circular(32.0),
              ),
              width: double.infinity,
              child: SafeArea(
                left: false,
                right: false,
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBar(title: 'Home'),
                    VerticalSpacing(eqH(33.0)),
                    Text(
                      'Your balance',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: kLightGrey),
                    ),
                    VerticalSpacing(eqH(4.0)),
                    Text(
                      '\$2,610.50',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    VerticalSpacing(eqH(32.0)),
                    Row(
                      children: [
                        ActionButton(
                          icon: Assets.images.upIcon.svg(),
                          text: 'Top Up',
                        ),
                        HorizontalSpacing(eqW(16.0)),
                        ActionButton(
                          icon: Assets.images.plusIcon.svg(),
                          text: 'Buy',
                        ),
                        HorizontalSpacing(eqW(16.0)),
                        ActionButton(
                          icon: Assets.images.minusIcon.svg(),
                          text: 'Sell',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(eqW(24.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transactions',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'See all',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: kPrimaryPurple),
                      ),
                    ],
                  ),
                  VerticalSpacing(eqH(13.0)),
                  const TransactionWidget(),
                  VerticalSpacing(eqH(30.0)),
                  Text(
                    'Watchlist',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  VerticalSpacing(eqH(16.0)),
                  const CoinWidget(name: 'Bitcoin', price: '21,262.60'),
                  const CoinWidget(name: 'Ethereum', price: '1,225.85'),
                  const CoinWidget(name: 'Bitcoin', price: '21,262.60'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
