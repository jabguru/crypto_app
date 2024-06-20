import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Widget icon;
  final String text;
  const ActionButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: kWhiteColor.withOpacity(0.35)),
        padding: EdgeInsets.symmetric(
          horizontal: eqW(25.67),
          vertical: eqH(21),
        ),
        child: Column(
          children: [
            icon,
            VerticalSpacing(eqH(12.0)),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
