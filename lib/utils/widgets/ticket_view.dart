import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_view_first_widget.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_view_seconed_widget.dart';
import 'package:booking_ticket_ui/utils/widgets/ticket_view_third_widget.dart';

import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.isColor});
  final Map<String, dynamic> ticket;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: AppLayout.getHeight(172),
      width: size.width * .85,
      margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
      child: Column(
        children: [
          // show the blue part of card ticketing
          TicketViewBlueCard(ticket: ticket, isColor: isColor),
          // show the line part of card / ticketing
          TicketViewWhiteLines(isColor: isColor),
          // show the red part of card / ticketing
          TicketViewRedCard(ticket: ticket, isColor: isColor),
        ],
      ),
    );
  }
}
/* : Stack(
        alignment: Alignment.centerRight,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width * 1.50,
                    height: MediaQuery.of(context).size.height * 1 / 10,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Color(0xff526799),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('NYC',
                                  style: Styles.headlineStyle3
                                      .copyWith(color: Colors.white)),
                              ThickContainer(),
                              const Icon(
                                  FluentSystemIcons.ic_fluent_airplane_filled),
                              Text('LDN',
                                  style: Styles.headlineStyle3
                                      .copyWith(color: Colors.white)),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('new- york',
                                    style: Styles.textStyle
                                        .copyWith(color: Colors.white)),
                                Text('8H : 30m',
                                    style: Styles.textStyle
                                        .copyWith(color: Colors.white)),
                                Text('london',
                                    style: Styles.textStyle
                                        .copyWith(color: Colors.white)),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20),
                        width: MediaQuery.of(context).size.width * 1.50,
                        height: MediaQuery.of(context).size.height * 1 / 10,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('NYC',
                                      style: Styles.textStyle
                                          .copyWith(color: Colors.white)),
                                  const Icon(FluentSystemIcons
                                      .ic_fluent_airplane_filled),
                                  Text('LDN',
                                      style: Styles.textStyle
                                          .copyWith(color: Colors.white)),
                                ],
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('new- york',
                                        style: Styles.textStyle
                                            .copyWith(color: Colors.white)),
                                    Text('8H : 30m',
                                        style: Styles.textStyle
                                            .copyWith(color: Colors.white)),
                                    Text('london',
                                        style: Styles.textStyle
                                            .copyWith(color: Colors.white)),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Styles.bgColros),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              alignment: Alignment.centerRight,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Styles.bgColros),
            ),
          )
        ],
      ), */
