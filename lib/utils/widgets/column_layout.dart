import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class APPColumnLayout extends StatelessWidget {
  const APPColumnLayout(
      {super.key,
      required this.firstText,
      required this.seconedText,
      required this.crossAlignment,
      this.isColor});
  final String firstText;
  final String seconedText;
  final CrossAxisAlignment crossAlignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headlineStyle3.copyWith(color: Colors.white)
              : Styles.headlineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          seconedText,
          style: isColor == null
              ? Styles.headlineStyle4.copyWith(color: Colors.white)
              : Styles.headlineStyle4,
        ),
      ],
    );
  }
}
