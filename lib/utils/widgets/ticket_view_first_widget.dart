import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/layout_builder.dart';
import 'package:booking_ticket_ui/utils/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketViewBlueCard extends StatelessWidget {
  const TicketViewBlueCard({super.key, required this.ticket, this.isColor});
  final Map<String, dynamic> ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppLayout.getHeight(21)),
            topRight: Radius.circular(AppLayout.getHeight(21))),
        color: isColor == null ? const Color(0xff526799) : Colors.white,
      ),
      padding: EdgeInsets.all(AppLayout.getHeight(AppLayout.getHeight(16))),
      child: Column(children: [
        //FIRST ROW
        Row(
          children: [
            Text(ticket['from']['code'],
                style: isColor == null
                    ? Styles.headlineStyle3.copyWith(color: Colors.white)
                    : Styles.headlineStyle3),
            // to take all available space we could use space
            Expanded(child: Container()),
            ThickContainer(isColors: isColor),
            // we use expanded to make it fit wdith otherwise it will be over
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                      height: AppLayout.getHeight(24),
                      child: AppLayoutBuilder(
                        section: 6,
                        isColor: isColor,
                      )),
                  Center(
                    child: Transform.rotate(
                      angle: 1.55,
                      child: Icon(
                        Icons.local_airport_rounded,
                        color: isColor == null
                            ? Colors.white
                            : const Color.fromARGB(248, 172, 207, 247),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ThickContainer(isColors: isColor),
            Expanded(child: Container()),
            Text(ticket['to']['code'],
                style: isColor == null
                    ? Styles.headlineStyle3.copyWith(color: Colors.white)
                    : Styles.headlineStyle3),
          ],
        ),
        const Gap(3),
        // SECONED ROW
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                width: AppLayout.getwidth(100),
                child: Text(
                  ticket['from']['name'],
                  style: isColor == null
                      ? Styles.headlineStyle4.copyWith(color: Colors.white)
                      : Styles.headlineStyle4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                ticket['flying_time'],
                textAlign: TextAlign.start,
                style: isColor == null
                    ? Styles.headlineStyle4.copyWith(color: Colors.white)
                    : Styles.headlineStyle3,
              ),
            ),
            SizedBox(
              width: AppLayout.getwidth(100),
              child: Text(
                ticket['to']['name'],
                textAlign: TextAlign.end,
                style: isColor == null
                    ? Styles.headlineStyle4.copyWith(color: Colors.white)
                    : Styles.headlineStyle4,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
