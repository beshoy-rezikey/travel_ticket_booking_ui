import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HoteLscreen extends StatelessWidget {
  const HoteLscreen({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * .6,
      height: AppLayout.getHeight(320),
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(17), vertical: 5),
      decoration: BoxDecoration(
        color: Styles.primarayColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 5,
            color: Colors.grey.shade200,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${hotel['image']}',
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text('\$${hotel['price']}/night',
              style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
