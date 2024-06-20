import 'dart:math';

import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/size.dart';
import 'package:flutter/material.dart';

class PorfolioBalanceRing extends StatefulWidget {
  const PorfolioBalanceRing({super.key});

  @override
  State<PorfolioBalanceRing> createState() => _PorfolioBalanceRingState();
}

class _PorfolioBalanceRingState extends State<PorfolioBalanceRing> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => setState(() {
          if (_selected < 2) {
            _selected++;
          } else {
            _selected = 0;
          }
        }),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.fromSize(
              size: const Size.square(285.0),
              child: Transform.rotate(
                angle: pi,
                child: CustomPaint(
                  painter: BalanceCustomPainter(
                    first: 1,
                    second: 2,
                    third: 3,
                    selected: _selected,
                  ),
                ),
              ),
            ),
            // TODO: UPDATE TEXTS WITH SELECTED
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
      ),
    );
  }
}

class BalanceCustomPainter extends CustomPainter {
  final int selected;
  final int first;
  final int second;
  final int third;
  BalanceCustomPainter({
    required this.selected,
    required this.first,
    required this.second,
    required this.third,
  });

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
      bool isselected = i == selected;

      final endAngle = sweepAngles[i];

      final ringPaint = Paint()
        ..shader = gradients[i]
            .createShader(Rect.fromCircle(center: center, radius: radius))
        ..strokeWidth = isselected ? 27.0 : 13.5
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

      double addition = isselected ? 0 : 6.75;
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
