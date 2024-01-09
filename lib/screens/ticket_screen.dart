import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_ticket_ui/utils/widgets/column_layout.dart';
import 'package:booking_ticket_ui/utils/widgets/layout_builder.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_view.dart';
import 'package:booking_ticket_ui/utils/app_info_list.dart';
import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColros,
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text('Ticket', style: Styles.headlineStyle1),
              Gap(
                AppLayout.getHeight(20),
              ),
              const TicketTabbs(firstTab: 'Upcoming', secondTab: 'previous'),
              Gap(
                AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  isColor: false,
                  ticket: ticketList[0],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(10),
                    vertical: AppLayout.getHeight(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        APPColumnLayout(
                            crossAlignment: CrossAxisAlignment.start,
                            firstText: 'Flutter Db',
                            isColor: false,
                            seconedText: 'passanger'),
                        APPColumnLayout(
                            crossAlignment: CrossAxisAlignment.end,
                            firstText: '5221  364849',
                            isColor: false,
                            seconedText: 'Passport'),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        APPColumnLayout(
                            crossAlignment: CrossAxisAlignment.start,
                            firstText: '364784 1513434558',
                            isColor: false,
                            seconedText: 'Number of E-Ticket'),
                        APPColumnLayout(
                            crossAlignment: CrossAxisAlignment.end,
                            firstText: 'B2GS548',
                            isColor: false,
                            seconedText: 'Booking Code '),
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa_logo.png',
                                  scale: 11,
                                ),
                                Text(
                                  '*** 86454',
                                  style: Styles.headlineStyle3,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Paymnet Method',
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                        const Column(
                          children: [
                            APPColumnLayout(
                                crossAlignment: CrossAxisAlignment.end,
                                firstText: '\$249.99',
                                isColor: false,
                                seconedText: 'price'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)))),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://githup.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      width: double.infinity,
                      color: Styles.textColror,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(20),
            top: AppLayout.getHeight(250),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColror,
                  width: AppLayout.getHeight(2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColror,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(20),
            top: AppLayout.getHeight(250),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColror,
                  width: AppLayout.getHeight(2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColror,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
