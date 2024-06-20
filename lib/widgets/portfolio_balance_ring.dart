import 'dart:math';

import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:flutter/material.dart';

class PorfolioBalanceRing extends StatelessWidget {
  const PorfolioBalanceRing({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox.fromSize(
            size: Size.square(285.0),
            child: Transform.rotate(
              angle: pi,
              child: CustomPaint(
                painter: BalanceCustomPainter(),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Solana balance',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: kDustyGrey),
              ),
              VerticalSpacing(eqH(4.0)),
              Text(
                '\$1560.60',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              VerticalSpacing(eqH(4.0)),
              Text(
                '+0.64% (\$9.98)',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: kPrimaryPurple),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BalanceCustomPainter extends CustomPainter {
  int first = 1;
  int second = 2;
  int third = 3;

  @override
  void paint(Canvas canvas, Size size) {
    //  ? paint background ring
    final backgroundPaint = Paint()
      ..color = kDarkGrey
      ..strokeWidth = 27.0
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, backgroundPaint);

    // ? paint other rings
    final totalValue = first + second + third;

    final sweepAngle1 = (2 * pi * (first / totalValue));
    final sweepAngle2 = (2 * pi * (second / totalValue));
    final sweepAngle3 = (2 * pi * (third / totalValue));

    List sweepAngles = [sweepAngle1, sweepAngle2, sweepAngle3];
    List gradients = [kRingGradient1, kRingGradient2, kRingGradient3];

    double startAngle = 0;

    for (var i = 0; i < 3; i++) {
      bool selected = i == 0;

      final endAngle = sweepAngles[i];

      final ringPaint = Paint()
        ..shader = gradients[i]
            .createShader(Rect.fromCircle(center: center, radius: radius))
        ..strokeWidth = selected ? 27.0 : 13.5
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

      double addition = selected ? 0 : 6.75;
      final arcRadius =
          min(size.width / 2 + addition, size.height / 2 + addition);

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: arcRadius),
        startAngle,
        endAngle - (10 * pi / 180),
        false,
        ringPaint,
      );

      startAngle += endAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
