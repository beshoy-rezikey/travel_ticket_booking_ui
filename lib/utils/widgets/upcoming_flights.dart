import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UpcomingFlights extends StatelessWidget {
  const UpcomingFlights({super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(15),
              horizontal: AppLayout.getwidth(15)),
          height: AppLayout.getHeight(425),
          width: size.width * .42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 1),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: AppLayout.getHeight(200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/plane.jpg'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(7)),
              Text(
                  '20% Discount on early booking on this flight donn\'t miss it',
                  style: Styles.headlineStyle2
                      .copyWith(color: Styles.primarayColor)
                      .copyWith(fontSize: 20)),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getwidth(15)),
                      height: AppLayout.getHeight(210),
                      width: size.width * .44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3ABBBB),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discount\nFor Survey',
                            style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'take survey about our services and get discount',
                            style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -40,
                      top: -40,
                      child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: const Color(0xff189999)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(AppLayout.getHeight(7)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getwidth(15)),
              height: AppLayout.getHeight(210),
              width: size.width * .44,
              decoration: BoxDecoration(
                color: const Color.fromARGB(253, 206, 101, 69),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppLayout.getHeight(18),
                  ),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Take LOVE',
                    style: Styles.headlineStyle2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '😍',
                      style: TextStyle(fontSize: AppLayout.getwidth(30)),
                    ),
                    TextSpan(
                      text: '🥰',
                      style: TextStyle(fontSize: AppLayout.getwidth(40)),
                    ),
                    TextSpan(
                      text: '😘',
                      style: TextStyle(fontSize: AppLayout.getwidth(30)),
                    ),
                  ]))
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
