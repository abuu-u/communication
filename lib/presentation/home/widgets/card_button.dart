import 'package:communication/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CardButton extends StatelessWidget {
  final String iconPath;
  final double buttonWidth;
  final String label;
  final void Function() onPressed;

  const CardButton({
    Key key,
    @required this.iconPath,
    @required this.buttonWidth,
    @required this.label,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: const Color(0xFFF2F2F2),
      ),
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(3.0),
        width: buttonWidth,
        height: buttonWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Svg(
              iconPath,
              size: Size.square(buttonWidth / 2),
              color: const Color(0xFFE0E0E0),
            ),
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Text(
          S.of(context).getHomePageButtonLabel(label),
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                height: 1.0,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
