import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String mediaUrl;
  final Color? color;
  final double? width;
  final double? height;
  const CustomCachedNetworkImage({
    super.key,
    required this.mediaUrl,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: mediaUrl,
      fit: BoxFit.cover,
      width: width,
      height: height,
      placeholder: (context, url) => Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13.0),
        ),
        width: 32.0,
        height: 32.0,
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
