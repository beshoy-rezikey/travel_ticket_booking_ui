import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconTEXT extends StatelessWidget {
   const AppIconTEXT({super.key, required this.text, required this.icon});
    final String text;
    final IconData icon;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getwidth(12), horizontal: AppLayout.getwidth(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getwidth(5),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          Icon(icon,color: Color(0XFFBFC2DF)),
          Gap(AppLayout.getwidth(10)),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}
