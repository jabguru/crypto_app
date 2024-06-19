import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScaffoldColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.cards.svg(
              width: eqW(457.7),
              height: eqH(384.58),
              fit: BoxFit.cover,
            ),
            VerticalSpacing(eqH(51.0)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seamless Trading',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          VerticalSpacing(eqH(12)),
                          Text(
                            'Buy, sell and exchange \ncryptocurrencies. ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(eqH(24.0)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        gradient: LinearGradient(
                          colors: [Color(0xFF9D62D9), Color(0xFF6262D9)],
                        ),
                      ),
                      padding: EdgeInsets.all(eqW(14.0)),
                      width: double.infinity,
                      child: Text(
                        'Get Started',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    VerticalSpacing(eqH(16.0)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
