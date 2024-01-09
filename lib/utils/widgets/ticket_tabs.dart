import 'package:booking_ticket_ui/utils/app_layout.dart';
import 'package:booking_ticket_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class TicketTabbs extends StatelessWidget {
  const TicketTabbs(
      {super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff4f6fd),
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
        ),
        padding: EdgeInsets.all(
          AppLayout.getHeight(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(
                AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
              ),
              height: AppLayout.getHeight(30),
              width: size.width * .44,
              child: Center(
                child: Text(
                  firstTab,
                  style: Styles.textStyle,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(
                AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                color: Styles.bgColros,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
              ),
              height: AppLayout.getHeight(30),
              width: size.width * .44,
              child: Center(
                child: Text(
                  secondTab,
                  style: Styles.textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
