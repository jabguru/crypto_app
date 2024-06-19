import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        gradient: kPurplePinkGradient,
      ),
      padding: EdgeInsets.all(eqW(14.0)),
      width: double.infinity,
      child: Text(
        'Get Started',
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
