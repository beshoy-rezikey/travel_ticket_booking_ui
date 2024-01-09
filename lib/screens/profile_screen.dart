import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/column_layout.dart';
import 'package:booking_ticket_ui/utils/widgets/layout_builder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColros,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getwidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(89),
                width: AppLayout.getwidth(89),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(10))),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/booking-icon.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headlineStyle1,
                  ),
                  Text(
                    'New-York',
                    style: Styles.headlineStyle4,
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                        color: const Color(0xfffef4f3),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100))),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          'Premuiem status',
                          style: TextStyle(
                              color: Color(0XFF526799),
                              fontWeight: FontWeight.w300),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text('EDIT',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primarayColor,
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primarayColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: AppLayout.getHeight(15),
                        color: const Color(0xff264cd2)),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 25,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primarayColor,
                      size: 27,
                    ),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You \'ve Got a New Award ',
                        style: Styles.headlineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You Have 150 Flight per year ',
                        style: Styles.headlineStyle4
                            .copyWith(color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated Miles',
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey.shade200),
                ],
                color: Styles.bgColros,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18))),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  textAlign: TextAlign.center,
                  '1982028',
                  style: Styles.headlineStyle1.copyWith(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Styles.textColror),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '30 sep 2023',
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    APPColumnLayout(
                      firstText: '03 042',
                      seconedText: 'Miles',
                      crossAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    APPColumnLayout(
                      firstText: 'AirLine CO',
                      seconedText: 'recived from',
                      crossAlignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(section: 12, isColor: false),
                Gap(AppLayout.getHeight(12)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    APPColumnLayout(
                      firstText: '24',
                      seconedText: 'Miles',
                      crossAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    APPColumnLayout(
                      firstText: 'McDonal\'s ',
                      seconedText: 'recived from',
                      crossAlignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    APPColumnLayout(
                      firstText: '52 340 ',
                      seconedText: 'Miles',
                      crossAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    APPColumnLayout(
                      firstText: 'EXUMA',
                      seconedText: 'recived from',
                      crossAlignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Text(
                  'How to get more Miles ',
                  style: Styles.textStyle.copyWith(
                      color: Styles.primarayColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
