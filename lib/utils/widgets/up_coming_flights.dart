import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primarayColor),
          ),
        ),
      ],
    );
  }
}
