import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDarkGrey,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(eqW(12.0)),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16.0,
          ),
          HorizontalSpacing(eqW(12.0)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bought ETH',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '+0.65 ETH',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                VerticalSpacing(eqH(2.0)),
                Text(
                  '\$812.10 \n30 Jul 2022, 3.30 PM',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: kStormGrey,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
