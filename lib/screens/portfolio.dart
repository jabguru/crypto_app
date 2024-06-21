import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/models/coin.dart';
import 'package:crypto_app/providers/providers.dart';
import 'package:crypto_app/widgets/coin_widget.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:crypto_app/widgets/portfolio_balance_ring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortfolioScreen extends ConsumerWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coins = ref.watch(coinsProvider(count: 3));

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
                child: RefreshIndicator.adaptive(
                  onRefresh: () async => ref.invalidate(coinsProvider),
                  color: kLightGrey,
                  backgroundColor: kDarkGrey,
                  child: ListView(
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
                      Center(
                        child: coins.when(
                          data: (List<Coin> coins) => Column(
                            children: [
                              PorfolioBalanceRing(
                                firstCoin: coins[0],
                                secondCoin: coins[1],
                                thirdCoin: coins[2],
                              ),
                              VerticalSpacing(eqH(48.0)),
                              ...coins.map(
                                (coin) => CoinWidget(
                                  name: coin.name,
                                  price: coin.currentPrice.toString(),
                                  image: coin.image,
                                ),
                              ),
                            ],
                          ),
                          error: (err, stck) => Text(
                            'An error occured!',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          loading: () =>
                              const CircularProgressIndicator.adaptive(),
                        ),
                      ),
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
