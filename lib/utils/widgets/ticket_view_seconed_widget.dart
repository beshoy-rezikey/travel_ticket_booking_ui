import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:booking_ticket_ui/utils/widgets/layout_builder.dart';
import 'package:flutter/material.dart';

class TicketViewWhiteLines extends StatelessWidget {
  const TicketViewWhiteLines({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isColor == null ? Styles.orangeColor : Colors.white,
      child: Row(
        children: [
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getwidth(10),
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.grey.shade200 : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppLayout.getHeight(10)),
                      bottomRight: Radius.circular(AppLayout.getHeight(10)),
                    ))),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppLayout.getHeight(4)),
              child: AppLayoutBuilder(isColor: isColor, section: 10),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getwidth(10),
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.grey.shade200 : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(10)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                    ))),
          )
        ],
      ),
    );
  }
}
