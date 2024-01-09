import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: Styles.textStyle.copyWith(color: Styles.primarayColor),
            ),
            Text('Book Tcikets', style: Styles.headlineStyle1),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getwidth(25),
              vertical: AppLayout.getHeight(25)),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(AppLayout.getHeight(5))),
            image: const DecorationImage(
              image: AssetImage('assets/images/booking-icon.png'),
            ),
          ),
        ),
      ],
    );
  }
}
