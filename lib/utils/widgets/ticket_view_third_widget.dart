// ignore: file_names
// ignore: file_names
import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/column_layout.dart';
import 'package:flutter/material.dart';

class TicketViewRedCard extends StatelessWidget {
  const TicketViewRedCard({
    super.key,
    required this.ticket,
    this.isColor,
  });
  final Map<String, dynamic> ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(isColor == null ? 21 : 0),
            bottomRight: Radius.circular(isColor == null ? 21 : 0)),
        color: isColor == null ? Styles.orangeColor : Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(
          AppLayout.getHeight(10),
          AppLayout.getHeight(16),
          AppLayout.getHeight(16),
          AppLayout.getHeight(16)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            APPColumnLayout(
                isColor: isColor,
                firstText: ticket['date'],
                seconedText: 'Date',
                crossAlignment: CrossAxisAlignment.start),
            APPColumnLayout(
                isColor: isColor,
                firstText: ticket['departure_time'],
                seconedText: 'Deprature Time',
                crossAlignment: CrossAxisAlignment.center),
            APPColumnLayout(
                isColor: isColor,
                firstText: ticket['number'].toString(),
                seconedText: 'Number',
                crossAlignment: CrossAxisAlignment.end),
          ]),
    );
  }
}
