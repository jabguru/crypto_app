import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:crypto_app/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const CoinWidget({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDarkGrey,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(eqW(12.0)),
      margin: EdgeInsets.only(bottom: eqH(16.0)),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            mediaUrl: image,
            width: 32.0,
            height: 32.0,
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
                      name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BTC',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.normal,
                            color: kStormGrey,
                          ),
                    ),
                    Text(
                      '+0.54%',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.normal,
                            color: kPrimaryPurple,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
