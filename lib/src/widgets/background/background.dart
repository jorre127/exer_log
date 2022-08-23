import 'package:exerlog/src/widgets/background/light_ball.dart';
import 'package:exerlog/src/widgets/theme/theme_provider.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      builder: (context, theme) {
        return Stack(
          children: [
            Positioned.fill(
              child: ColoredBox(
                color: theme.colorTheme.backgroundColorVariation,
              ),
            ),
            Transform.translate(
              offset: Offset(-110, -200),
              child: Align(
                alignment: Alignment.topLeft,
                child: LightBall(
                  color: theme.colorTheme.primaryColor,
                  size: 300,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(110, -200),
              child: Align(
                alignment: Alignment.topRight,
                child: LightBall(
                  color: theme.colorTheme.secondaryColor,
                  size: 300,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
