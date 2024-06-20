import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/gen/assets.gen.dart';
import 'package:crypto_app/screens/home.dart';
import 'package:crypto_app/widgets/button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    CustomButton(
                      text: 'Get Started',
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
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
